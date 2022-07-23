//
//  reflex_iOSApp.swift
//  reflex iOS
//
//  Created by Pierre Gourgouillon on 20/07/2022.
//

import SwiftUI

@main
struct ReflexApp: App {
    @StateObject var appState = AppState()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView(appState: appState)
                    .environmentObject(appState)
            }
        }
    }
}
