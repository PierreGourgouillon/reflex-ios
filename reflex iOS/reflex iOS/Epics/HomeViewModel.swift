//
//  HomeViewModel.swift
//  reflex iOS
//
//  Created by Pierre Gourgouillon on 20/07/2022.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var intervalTimer: IntervalTimer = IntervalTimer(
        trainingTime: 30,
        pause: 10,
        exercices: 3,
        rounds: 3,
        timerResetRound: 0)

    private func calculateWorkTime() -> Float {
        let trainingTime = intervalTimer.trainingTime * intervalTimer.exercices
        let pause = intervalTimer.pause * intervalTimer.exercices
        let resetRound = intervalTimer.timerResetRound * intervalTimer.rounds
        return (trainingTime + pause + resetRound) * intervalTimer.rounds
    }

    func getBeautifulTimer() -> String {
        let workTimeSeconds = calculateWorkTime()
        let minutes = Int(workTimeSeconds / 60)
        let seconds = Int(workTimeSeconds) % 60

        return String(format: "%02d:%02d", minutes, seconds)
    }
}
