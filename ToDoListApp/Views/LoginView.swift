//
//  LoginView.swift
//  ToDoListApp
//
//  Created by Ricardo Garza on 9/11/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, background: .pink)
                
                
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .blue) {
                        viewModel.login()
                    }
                }
                .offset(y: -50)
                
                // Create Account
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account") {
                        RegisterView()
                    }
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
