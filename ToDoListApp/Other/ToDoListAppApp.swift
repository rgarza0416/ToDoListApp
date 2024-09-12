//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Ricardo Garza on 9/6/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
