//
//  HomeView.swift
//  reflex iOS
//
//  Created by Pierre Gourgouillon on 20/07/2022.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    @EnvironmentObject var appState: AppState

    init(appState: AppState) {
        self.viewModel = HomeViewModel(appState: appState)
    }

    var body: some View {
        VStack {
            Text(appState.intervalTimerData.getBeautifulTimer())
            NavigationLink("Second view") {
                EditTimeView(value: $appState.intervalTimerData.trainingTime, title: "Hello", range: 0...100, step: 1)
                    .environmentObject(appState)
            }
            NavigationLink("Cell") {
                CellView(imageName: "play.circle", title: "Travail", value: "00:30", color: .purple)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .setNavBar(title: "Interval Timer", titleColor: .white)
        .fullScreen(alignment: .center)
        .background(.red)

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let appState = AppState()
        HomeView(appState: appState)
            .environmentObject(appState)
    }
}
