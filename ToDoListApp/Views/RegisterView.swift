//
//  RegisterView.swift
//  ToDoListApp
//
//  Created by Ricardo Garza on 9/11/24.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
