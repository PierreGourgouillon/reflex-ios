//
//  IntervalTimer.swift
//  reflex iOS
//
//  Created by Pierre Gourgouillon on 20/07/2022.
//

import Foundation

struct IntervalTimer {
    var trainingTime: Float
    var pause: Float
    var exercices: Float
    var rounds: Float
    var timerResetRound: Float
    var totalSeconds: Float {
        let trainingTime = self.trainingTime * self.exercices
        let pause = self.pause * self.exercices
        let resetRound = self.timerResetRound * self.rounds
        return (trainingTime + pause + resetRound) * self.rounds
    }
}

extension Float {
    func getBeautifulTimer() -> String {
        let minutes = Int(self / 60)
        let seconds = Int(self) % 60

        return String(format: "%02d:%02d", minutes, seconds)
    }
}
