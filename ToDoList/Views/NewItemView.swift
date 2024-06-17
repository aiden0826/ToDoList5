//
//  NewItemView.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/17/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
var body: some View {
    VStack {
        Text("Create Reminder")
            .font(.system(size: 40))
            .bold()
            .padding(.top, 100)
        
            Form {
                // Title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
            
                // Due Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
            
                // Button
                TLButton(title: "Save",
                     backgroundColor: .pink
                ) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(
                    title: Text("Error"),
                    message: Text("Please enter a title and due date.")
                )
            }
        }
        
    }
    
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }
                                         
    ))
}
