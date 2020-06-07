//
//  NewTodoView.swift
//  SwiftUICombineBase
//
//  Created by user on 5/5/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import SwiftUI

struct NewTodoView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @ObservedObject var viewModel: NewTodoViewModel
    
    @ObservedObject private var keyboard = KeyboardResponder()
    
    @State private var title = ""
    
    private var isAddButtonDisabled:Bool {
        title.isEmpty
    }
        
    private var addButtonColor:Color {
        isAddButtonDisabled ? .gray : .blue
    }
    
    var body: some View {
        VStack {
            Spacer()
            TextField("Enter Name", text: $title)
            Spacer()
            HStack {
                Button(action: {
                   self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Cancel")
                }
                .padding(.vertical, 16.0)
                .frame(minWidth: 0, maxWidth: .infinity)
                
                Button(action: {
                    if !self.isAddButtonDisabled {
                        self.viewModel.addNewTodo(title: self.title)
                        self.presentationMode.wrappedValue.dismiss()
                    }
                }) {
                    Text("Add")
                }
                .padding(.vertical, 16.0)
                .frame(minWidth: 0, maxWidth: .infinity)
                //.background(addButtonColor)
                .disabled(isAddButtonDisabled)
            }
        }
        .padding()
        .padding(.bottom, keyboard.currentHeight)
        .animation(.easeOut(duration: keyboard.duration))
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(viewModel: NewTodoViewModel())
    }
}
