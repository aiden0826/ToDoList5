//
//  TCButton.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/17/24.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        }label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(Color(backgroundColor))
                Text(title)
                    .bold()
                    .foregroundStyle(Color(.white))
            }
            .padding()
        }
    }
}

#Preview {
    TLButton(title: "button", backgroundColor: .pink, action: {
        //action
    })
}
