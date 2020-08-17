// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let ghx8H2Q5Ku651 = try? newJSONDecoder().decode(Ghx8H2Q5Ku651.self, from: jsonData)

import Foundation

// MARK: - Ghx8H2Q5Ku651
public struct Ghx8H2Q5Ku651: Codable {
    public let status, e, m: String?
    public let p: [S]?
    public let s: S?
    public let id: String?

    public init(status: String?, e: String?, m: String?, p: [S]?, s: S?, id: String?) {
        self.status = status
        self.e = e
        self.m = m
        self.p = p
        self.s = s
        self.id = id
    }
}
