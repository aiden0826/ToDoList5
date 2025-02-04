//
//  User.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/17/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
