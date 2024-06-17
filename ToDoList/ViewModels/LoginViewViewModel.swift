//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/17/24.
//

import FirebaseAuth
import Foundation
import SwiftUI

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""

    init() {}
    
    func login() {
        guard validate() else {
            return
        }

        // Try log in
        Auth.auth().signIn(withEmail: email, password: password)
    }

    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields."
            return false
        }

        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email."
            return false
        }

        return true
    }
}
