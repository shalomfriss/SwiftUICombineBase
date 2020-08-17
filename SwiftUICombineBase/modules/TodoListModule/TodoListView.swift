//
//  TodoListView.swift
//  SwiftUICombineBase
//
//  Created by user on 4/30/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import SwiftUI
import Combine

struct TodoListView: View {
    @ObservedObject var viewModel = TodoListViewModel()
    @State private var isShowingAddNew = false
    
    public init() {
        
    }
    
    private var addNewButton: some View {
        Button(action: {
            self.isShowingAddNew.toggle()
        }) {
            Image(systemName: "plus")
        }
    }
    
    private var showCompletedButton: some View {
        Button(action: {
            self.viewModel.showCompleted.toggle()
        }) {
            Image(systemName: self.viewModel.showCompleted ? "checkmark.circle.fill" : "checkmark.circle")
        }
    }
    
    
    var body: some View {
        NavigationView {
            Button(action: {
                self.viewModel.getRedditPosts()
            }, label: {
                Image(systemName: self.viewModel.showCompleted ? "checkmark.circle.fill" : "checkmark.circle")
            })
            List(viewModel.todos) { todo in
                Button(action: {
                    self.viewModel.toggleIsCompleted(for: todo)
                }) {
                    TodoRow(todo: todo)
                }
            }
            .navigationBarTitle(Text("Todo List"))
            .navigationBarItems(trailing: addNewButton)
        }
        .sheet(isPresented: $isShowingAddNew, onDismiss: {
            self.viewModel.fetchTodos()
        }) {
            NewTodoView(viewModel: NewTodoViewModel())
        }
        .onAppear {
            self.viewModel.fetchTodos()
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        var view = TodoListView()
        view.viewModel = TodoListViewModel(dataManager: MockDataManager())
        return view
    }
}
