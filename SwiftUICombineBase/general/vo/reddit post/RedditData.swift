// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcomeData = try? newJSONDecoder().decode(WelcomeData.self, from: jsonData)

import Foundation

// MARK: - WelcomeData
public struct RedditData: Codable {
    public let modhash: String?
    public let dist: Int?
    public let children: [Child]?
    public let after: String?
    public let before: String?

    public init(modhash: String?, dist: Int?, children: [Child]?, after: String?, before: String?) {
        self.modhash = modhash
        self.dist = dist
        self.children = children
        self.after = after
        self.before = before
    }
}
