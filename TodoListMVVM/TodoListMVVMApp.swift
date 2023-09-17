//
//  TodoListMVVMApp.swift
//  TodoListMVVM
//
//  Created by Mohamed Mostapha on 15/09/2023.
//

import SwiftUI


/*
 
 MVVM Architecture
 
 Model - Data point
 View - UI
 ViewModel - Manages Models for View
 
 */

@main
struct TodoListMVVMApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
