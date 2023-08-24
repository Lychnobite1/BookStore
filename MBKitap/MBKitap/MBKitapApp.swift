//
//  MBKitapApp.swift
//  MBKitap
//
//  Created by MURAT BAŞER on 12.08.2023.
//

import SwiftUI
import Firebase
@main
struct MBKitapApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            if Auth.auth().currentUser != nil {
                MainView()
            }
            else {
                LoginView()
            }
            
        }
    }
}
