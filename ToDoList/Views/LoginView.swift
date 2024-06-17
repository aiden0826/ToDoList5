//
//  LoginView.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/17/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                //Login Header
                HeaderView(title: "Reminders", subTitle: "Get things done", angle: 15, background: .pink)
                
                //Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(Color(.red))
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .textInputAutocapitalization(.never)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .textInputAutocapitalization(.never)
                    TLButton(title: "Login", backgroundColor: .blue, action: {
                        viewModel.login()
                    })
                }
                .offset(y: -110)
            //Create Account
                VStack {
                    HStack {
                        VStack {
                            Text("Don't have one?")
                            
                            NavigationLink(destination: RegisterView(), label: ({Text("Create a account")}))
                            
                        }
                        
                    }
                }
            }
        }
    }
}



#Preview {
    LoginView()
}
