//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/17/24.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone (_ state: Bool){
        isDone = state
    }
}
