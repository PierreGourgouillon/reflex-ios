//
//  reflex_iOSApp.swift
//  reflex iOS
//
//  Created by Pierre Gourgouillon on 20/07/2022.
//

import SwiftUI

@main
struct ReflexApp: App {
    var appState = AppState()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
            }
            .environmentObject(appState)
            .environmentObject(HomeViewInteractor(appState: appState))
        }
    }
}
