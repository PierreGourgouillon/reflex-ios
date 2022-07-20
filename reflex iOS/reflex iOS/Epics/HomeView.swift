//
//  HomeView.swift
//  reflex iOS
//
//  Created by Pierre Gourgouillon on 20/07/2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var appState: AppState
    @EnvironmentObject var interactor: HomeViewInteractor

    var body: some View {
        VStack {
            Text(String(appState.intervalTimerState.intervalTimerData.trainingTime))
            Button("Change timer") {
                interactor.changeTimer()
            }
            NavigationLink("Second view") {
                EditTimeView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
