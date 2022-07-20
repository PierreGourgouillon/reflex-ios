//
//  HomeViewInteractor.swift
//  reflex iOS
//
//  Created by Pierre Gourgouillon on 20/07/2022.
//

import Foundation

class HomeViewInteractor: ObservableObject {

    var appState: AppState

    init(appState: AppState) {
        self.appState = appState
    }

    func changeTimer() {
        appState.intervalTimerState.intervalTimerData.trainingTime = 1000
    }

//    func calculateWorkTime() -> Float {
//        let trainingTime = appState.intervalTimerData.trainingTime * appState.intervalTimerData.exercices
//        let pause = appState.intervalTimerData.pause * appState.intervalTimerData.exercices
//        let resetRound = appState.intervalTimerData.timerResetRound * appState.intervalTimerData.rounds
//        return (trainingTime + pause + resetRound) * appState.intervalTimerData.rounds
//    }
//
//    func getBeautifulTimer() -> String {
//        let workTimeSeconds = calculateWorkTime()
//        let minutes = Int(workTimeSeconds / 60)
//        let seconds = Int(workTimeSeconds) % 60
//
//        return String(format: "%02d:%02d", minutes, seconds)
//    }
}
