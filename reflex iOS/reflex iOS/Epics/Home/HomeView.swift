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
        VStack() {
            HStack(alignment: .center) {
                Spacer()
                Text(appState.intervalTimerData.totalSeconds.getBeautifulTimer())
                    .font(.system(size: 60, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
            }
            .frame(height: 200)
            .background(.blue)
            ScrollView(.vertical, showsIndicators: false) {
                NavigationLink {
                    EditTimeView(value: $appState.intervalTimerData.trainingTime,
                                 title: "Travail", range: 0...180,
                                 step: 5, systemName: "play.circle", backgroundColor: .green)
                        .environmentObject(appState)
                } label: {
                    CellView(imageName: "play.circle", title: "Travail",
                             value: appState.intervalTimerData.trainingTime.getBeautifulTimer(), color: .green)
                }
                .buttonStyle(.plain)

                NavigationLink {
                    EditTimeView(value: $appState.intervalTimerData.pause,
                                 title: "Repos", range: 0...60,
                                 step: 5, systemName: "pause.circle", backgroundColor: .red)
                        .environmentObject(appState)
                } label: {
                    CellView(imageName: "pause.circle", title: "Repos",
                             value: appState.intervalTimerData.pause.getBeautifulTimer(), color: .red)
                }
                .buttonStyle(.plain)

                NavigationLink {
                    EditTimeView(value: $appState.intervalTimerData.exercices,
                                 title: "Exercices", range: 0...20,
                                 step: 1, systemName: "bolt.circle", backgroundColor: .gray)
                        .environmentObject(appState)
                } label: {
                    CellView(imageName: "bolt.circle", title: "Exercices",
                             value: String(Int(appState.intervalTimerData.exercices)), color: .gray)
                }
                .buttonStyle(.plain)

                NavigationLink {
                    EditTimeView(value: $appState.intervalTimerData.rounds,
                                 title: "Rounds", range: 0...25,
                                 step: 1, systemName: "goforward", backgroundColor: .purple)
                        .environmentObject(appState)
                } label: {
                    CellView(imageName: "goforward", title: "Rounds",
                             value: "\(Int(appState.intervalTimerData.rounds))X", color: .purple)
                }
                .buttonStyle(.plain)

                NavigationLink {
                    EditTimeView(value: $appState.intervalTimerData.timerResetRound,
                                 title: "Réinitialisation du round", range: 0...180,
                                 step: 5, systemName: "clock", backgroundColor: .yellow)
                        .environmentObject(appState)
                } label: {
                    CellView(imageName: "clock", title: "Réinitialisation du round",
                             value: appState.intervalTimerData.timerResetRound.getBeautifulTimer(), color: .yellow)
                }
                .buttonStyle(.plain)
            }
            .padding()
            .background(.white)
        }
        .navigationBarTitleDisplayMode(.inline)
        .setNavBar(title: "Interval Timer", titleColor: .white, backgroundColor: .clear)
        .fullScreen(alignment: .center)
        .background(.clear)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let appState = AppState()
        HomeView(appState: appState)
            .environmentObject(appState)
    }
}
