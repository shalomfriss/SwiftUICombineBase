//
//  TodoListViewModel.swift
//  SwiftUICombineBase
//
//  Created by user on 4/30/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import Foundation
import Combine

protocol TodoListViewModelProtocol {
    var todos: [Todo] { get }
    var showCompleted: Bool { get set }
    func fetchTodos()
    func toggleIsCompleted(for todo: Todo)
}

final class TodoListViewModel: ObservableObject {
    private var model:TodoListModel = TodoListModel()
    
    @Published var todos = [Todo]()
    @Published var showCompleted = false {
        didSet {
            fetchTodos()
        }
    }
    
    var dataManager: DataManagerProtocol
    
    var pub:AnyPublisher<PetVO, Error>?
    var cancellable:AnyCancellable?
    
    init(dataManager: DataManagerProtocol = DataManager.shared) {
        self.dataManager = dataManager
        fetchTodos()
        
        let net = NetworkManager.shared
        
        let urlString = "https://petstore.swagger.io/v2/pet/2"
        pub = net.getCall(url: urlString, type: PetVO.self)
        
        cancellable = pub?.sink(receiveCompletion: {complete in
            switch(complete) {
            case .finished:
                print("finished")
                print(complete)
            case .failure(let error):
                print("ERROR")
                print(error)
            }
        }, receiveValue: {pet in
            print("GOT VALUE")
            print(pet)
        })
        
        
        
        
        let url = URL(string: "https://example.com/post")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        
    }
}

// MARK: - TodoListViewModelProtocol
extension TodoListViewModel: TodoListViewModelProtocol {
    func fetchTodos() {
        todos = dataManager.fetchTodoList(includingCompleted: showCompleted)
    }
    
    func toggleIsCompleted(for todo: Todo) {
        dataManager.toggleIsCompleted(for: todo)
        fetchTodos()
    }
}
