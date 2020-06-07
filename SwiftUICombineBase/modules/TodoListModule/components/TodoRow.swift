//
//  TodoRow.swift
//  SwiftUICombineBase
//
//  Created by user on 5/6/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import SwiftUI

struct TodoRow: View {
    var todo: Todo
    
    var body: some View {
        HStack {
            Image(systemName: todo.isCompleted ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(todo.isCompleted ? .blue : .black)
            Text(todo.title)
            Spacer()
        }
    }
}

struct TodoRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TodoRow(todo: Todo(title: "Buy groceries"))
            TodoRow(todo: Todo(title: "Visit a doctor", isCompleted: true))
        }
        .previewLayout(.fixed(width: 300, height: 44))
    }
}
