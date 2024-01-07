// Created 20.12.2023 

import SwiftUI

@main
struct PracticalStuffApp: App {
    
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
        .environmentObject(appState)
    }
}
