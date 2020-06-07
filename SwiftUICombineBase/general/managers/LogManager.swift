//
//  LogManager.swift
//  SwiftUICombineBase
//
//  Created by Shalom Friss on 6/7/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import Foundation

class LogManager {
    public static let shared:LogManager = LogManager()
    
    public func log(msg:Any) {
        print(msg)
    }
}
