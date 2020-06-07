//
//  ValetValue.swift
//  SwiftUICombineBase
//
//  Created by Shalom Friss on 5/25/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import Foundation
import Valet

@propertyWrapper
struct ValetValue {
    private var key: String
    private let defaultValue: String
    private let valetIdentifier: String
    
    init(key: String, defaultValue: String, valetIdentifier:String = "") {
        self.key = key
        self.defaultValue = defaultValue
        self.valetIdentifier = valetIdentifier
    }
    
    var wrappedValue: String {
        get {
            let myValet = Valet.valet(with: Identifier(nonEmpty: valetIdentifier)!, accessibility: .whenUnlocked)
            return myValet.string(forKey: key) ?? defaultValue
        }
        set {
            let myValet = Valet.valet(with: Identifier(nonEmpty: valetIdentifier)!, accessibility: .whenUnlocked)
            myValet.set(string: newValue, forKey: key)
        }
    }
}
