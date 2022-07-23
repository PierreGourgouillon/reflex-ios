//
//  AppState.swift
//  reflex iOS
//
//  Created by Pierre Gourgouillon on 20/07/2022.
//

import Foundation
import SwiftUI

class AppState: ObservableObject {
    @Published var intervalTimerData: IntervalTimer = IntervalTimer(
        trainingTime: 30,
        pause: 10,
        exercices: 3,
        rounds: 3,
        timerResetRound: 0)
}
