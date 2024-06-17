//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/17/24.
//

import FirebaseCore
import SwiftUI

@main
struct toDoList: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
