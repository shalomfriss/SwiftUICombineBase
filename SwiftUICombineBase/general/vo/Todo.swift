//
//  Todo.swift
//  SwiftUICombineBase
//
//  Created by user on 4/30/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import Foundation

import Foundation

struct Todo: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted = false
}
