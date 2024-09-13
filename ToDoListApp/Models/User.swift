//
//  User.swift
//  ToDoListApp
//
//  Created by Ricardo Garza on 9/11/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
