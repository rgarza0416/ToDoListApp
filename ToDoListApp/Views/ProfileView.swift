//
//  ProfileView.swift
//  ToDoListApp
//
//  Created by Ricardo Garza on 9/11/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        // Avatar
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .frame(width: 125, height: 125)
            .padding()
        
        // Info
        VStack(alignment: .leading) {
            HStack {
                Text("Name: ")
                    .bold()
                Text(user.name)
            }
            .padding()
            
            HStack {
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
            .padding()
            
            HStack {
                Text("Member since: ")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
            .padding()
        }
        .padding()
        
        // sign out
        Button("Log out") {
            viewModel.logOut()
        }
        .tint(.red)
        .padding()
        Spacer()
    }
}

#Preview {
    ProfileView()
}
