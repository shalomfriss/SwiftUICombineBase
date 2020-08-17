// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let s = try? newJSONDecoder().decode(S.self, from: jsonData)

import Foundation

// MARK: - S
public struct S: Codable {
    public let y, x: Int?
    public let u: String?

    public init(y: Int?, x: Int?, u: String?) {
        self.y = y
        self.x = x
        self.u = u
    }
}
