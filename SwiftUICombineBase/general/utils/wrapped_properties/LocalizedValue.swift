//
//  LocalizedValue.swift
//  SwiftUICombineBase
//
//  Created by Shalom Friss on 5/25/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import Foundation

@propertyWrapper
struct LocalizedValue {
    private var key: String
    private let comment: String
    
    init(key: String, comment:String = "") {
        self.key = key
        self.comment = comment
    }
    
    var wrappedValue: String {
        get {
            return NSLocalizedString(key, comment: comment)
        }
        set {
            key = newValue
        }
    }
}
