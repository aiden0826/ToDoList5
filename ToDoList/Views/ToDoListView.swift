//
//  ItemsView.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/17/24.
//
import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    var body: some View {
            
            NavigationView{
                NavigationStack{
                    
                    VStack{
                        ZStack{
                            Text("Creat a list using the '+'")
                                .shadow(color: .black, radius: 100)
                        }
                    }
                    .navigationTitle("List")
                    .toolbar {
                        Button {
                            // Action
                            viewModel.showingNewItemView = true
                        } label: {
                            Image(systemName: "plus")
                        }
                        .sheet(isPresented: $viewModel.showingNewItemView) {
                            NewItemView(newItemPresented: $viewModel.showingNewItemView)
                        }
                    }
                }
            }
    }
}

#Preview {
    ToDoListView(userId:"")
}
