//
//  TLButton.swift
//  ToDoListApp
//
//  Created by Ricardo Garza on 9/12/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
           action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        })
        .padding()
    }
}

#Preview {
    TLButton(title: "Log In", background: .brown) {
        //action 
    }
}
