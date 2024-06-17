//
//  HeaderView.swift
//  ToDoList
//
//  Created by Aiden Ruiz on 6/17/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subTitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(Color(background))
                .rotationEffect(Angle(degrees: angle))
            Spacer()
            VStack{
                Text(title)
                    .foregroundStyle(Color(.white))
                    .bold()
                    .font(.system(size: 50))
                Text(subTitle)
                    .foregroundStyle(Color(.white))
                    .font(.system(size: 30))
            }
            .padding(.top, 60)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
        .padding()
        Spacer()
    }
}
#Preview {
    HeaderView(
        title: "Title",
                
        subTitle:"SubTitle",
                
        angle: 15,
                
        background: .pink
    )
}
