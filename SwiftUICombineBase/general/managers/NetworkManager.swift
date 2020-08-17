//
//  NetworkManager.swift
//  PermutationX
//
//  Created by user on 3/30/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import Foundation
import Combine

enum HTTPError: LocalizedError {
    case badRequest     //400
    case unauthorized   //401
    case notFound       //404
    case redirect       // >= 300, <399
    case clientError    // >= 400, <499
    case serverError    // >= 500, <599
    case decodingError
    case genericError
}

class NetworkManager {
    
    //MARK:- props -
    private static var _shared:NetworkManager = NetworkManager()
    public static var shared:NetworkManager {
        get {
            return _shared
        }
    }
    
    private let session: URLSession
    
    let cacheSizeMemory = 500*1024*1024
    let cacheSizeDisk = 0
    let cache:URLCache
    
    init() {
        self.session = URLSession.shared
        cache = URLCache(memoryCapacity: cacheSizeMemory, diskCapacity: cacheSizeDisk, diskPath: "nsurlcache")
    }
    
    init(session: URLSession = .shared) {
        self.session = session
        cache = URLCache(memoryCapacity: cacheSizeMemory, diskCapacity: cacheSizeDisk, diskPath: "nsurlcache")
    }
    
    
    //MARK:- Call -
    /// Make a url call.  This method abstracts from the type and url.  All that is needed is to call this with a url string and a type
    /// - Parameters:
    ///   - url: String - the url string
    ///   - type: <T> - The type to decode to
    /// - Returns: AnyPublisher<T, Error>
    func getCall<T:Codable>(url:String, type:T.Type) -> AnyPublisher<T, Error>? {
        guard let url = URL(string: url) else {
            print("\(#file):\(#line):ERROR:Bad URL!")
            return nil
        }
        
        let urlRequest = URLRequest(url: url)
        return self.makeRequest(request: urlRequest, type: type)
    }
    
    /// Make a post url call.  This method abstracts from the type and url.  All that is needed is to call this with a url string and a type
    /// - Parameters:
    ///   - url: String - the url string
    ///   - type: <T> - The type to decode to
    /// - Returns: AnyPublisher<T, Error>
    func postCall<T:Codable>(url:String, params:[String: Any], type:T.Type) -> AnyPublisher<T, Error>? {
        guard let url = URL(string: url) else {
            print("\(#file):\(#line):ERROR:Bad URL!")
            return nil
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        let postString = "userId=300&title=My urgent task&completed=false";
        request.httpBody = postString.data(using: String.Encoding.utf8);
        
        return self.makeRequest(request: request, type: type)
    }
    
    
    
    //MARK:- Utils -
    
    /// Make a request by checking the cache and if there is no entry make a network request.
    /// - Parameters:
    ///   - request: URLRequest - The request object to use
    ///   - type: The codable type.  This would look like MyObjectVO.self
    /// - Returns: AnyPublisher<T, Error>? - A publisher that we can subscribe to for results
    func makeRequest<T:Codable>(request:URLRequest, type: T.Type) -> AnyPublisher<T, Error>? {
        if let cachedData = self.cache.cachedResponse(for: request)?.data {
            LogManager.shared.log(msg: "Found cached copy")
            do {
                let decoder = JSONDecoder()
                let results =  try decoder.decode(T.self, from: cachedData)
                let futureAsyncPublisher = Future<T, Error> { promise in
                    return promise(.success(results))
                }
                
                return futureAsyncPublisher.eraseToAnyPublisher()
            } catch {
                print("decodingError")
                let futureAsyncPublisher = Future<T, Error> { promise in
                    return promise(.failure(HTTPError.decodingError))
                }
                
                return futureAsyncPublisher.eraseToAnyPublisher()
            }
        }
        
        return self.session.dataTaskPublisher(for: request)
        .tryMap { data, response -> Data in
            if let error = self.getError(response: response) {
                throw error
            }
            return data
        }
        .decode(type: type, decoder: JSONDecoder())
        .eraseToAnyPublisher()
    }
    
    /// Check for an error in the response
    /// - Parameter response: URLResponse
    /// - Returns: HTTPError?
    private func getError(response:URLResponse) -> HTTPError? {
        guard let httpResponse = response as? HTTPURLResponse else {
            return HTTPError.genericError
        }
        
        if(httpResponse.statusCode >= 200 && httpResponse.statusCode < 300) {
            return nil
        }
        
        switch(httpResponse.statusCode) {
        case 400:
            return HTTPError.badRequest
        case 401:
            return HTTPError.unauthorized
        case 404:
            return HTTPError.notFound
        case 500:
            return HTTPError.serverError
        default:
            return HTTPError.genericError
        }
    }
}
