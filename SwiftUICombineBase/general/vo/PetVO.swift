// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(PetVO.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct PetVO: Codable {
    let id: Int?
    let category: Category?
    let photoUrls: [String]?
    let tags: [Category]?
    let status: String?
}

// MARK: - Category
struct Category: Codable {
    let id: Int?
    let name: String?
}
