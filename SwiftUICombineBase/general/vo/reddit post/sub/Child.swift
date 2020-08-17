// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let child = try? newJSONDecoder().decode(Child.self, from: jsonData)

import Foundation

// MARK: - Child
public struct Child: Codable {
    public let kind: Kind?
    public let data: ChildData?

    public init(kind: Kind?, data: ChildData?) {
        self.kind = kind
        self.data = data
    }
}
