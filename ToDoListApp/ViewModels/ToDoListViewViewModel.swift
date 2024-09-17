//
//  ToDoListViewViewModel.swift
//  ToDoListApp
//
//  Created by Ricardo Garza on 9/11/24.
//

import Foundation

/// ViewModel for list of items view
/// Primary tab

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
    
    func delete(id: String) {
        
    }
}
