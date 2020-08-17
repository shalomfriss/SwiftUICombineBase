// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
public struct RedditPosts: Codable {
    public let kind: String?
    public let data: RedditData?
    
    public init(kind: String?, data: RedditData?) {
        self.kind = kind
        self.data = data
    }
}
