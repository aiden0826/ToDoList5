//
//  ProfileView.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/17/24.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                TLButton(title: "LogOut",
                         backgroundColor: .red) {
                    viewModel.logOut()
                }
               .padding()
               .padding(.bottom, 100)
               .padding(.top, 100)
                
            }
            .navigationTitle("Account")
        }
    }
}

#Preview {
    ProfileView()
}
