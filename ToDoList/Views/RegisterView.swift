//
//  RegisterView.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/18/24.
//
import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register",
                       subTitle: "Start organizing todos",
                       angle: -15,
                       background: .orange)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text:
                            $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    backgroundColor: .green
                ) {
                    viewModel.register()
                }
                .padding()
            }
            .offset(y: -50)
            
            Spacer()
        }
        
    }
}

#Preview {
    RegisterView()
}
