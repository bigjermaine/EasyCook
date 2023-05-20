//
//  EasyCookApp.swift
//  EasyCook
//
//  Created by Apple on 15/05/2023.
//

import SwiftUI
import FirebaseCore



@main
struct EasyCookApp: App {
    
    
    init() {
        FirebaseApp.configure()
           }

    var body: some Scene {
        
       
        WindowGroup {
            ContentView()
        }
    }
}
