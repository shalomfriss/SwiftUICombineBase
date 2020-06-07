//
//  DataManager.swift
//  SwiftUICombineBase
//
//  Created by user on 4/30/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import Foundation

protocol DataManagerProtocol {
    func fetchTodoList(includingCompleted: Bool) -> [Todo]
    func addTodo(title: String) // updated method
    func toggleIsCompleted(for todo: Todo)
}

class DataManager {
    static let shared: DataManagerProtocol = DataManager()
    private var todos = [Todo]()
    
    private init() { }
}

// MARK: - DataManagerProtocol
extension DataManager: DataManagerProtocol {
    func fetchTodoList(includingCompleted: Bool = false) -> [Todo] {
        //includingCompleted ? todos : todos.filter { !$0.isCompleted }
        todos
    }
    
    func addTodo(title: String) {
        let todo = Todo(title: title)
        todos.insert(todo, at: 0)
    }
    
    func toggleIsCompleted(for todo: Todo) {
        if let index = todos.firstIndex(where: { $0.id == todo.id }) {
            todos[index].isCompleted.toggle()
        }
    }
}


extension DataManagerProtocol {
    func fetchTodoList(includingCompleted: Bool = false) -> [Todo] {
        fetchTodoList(includingCompleted: includingCompleted)
    }
}
