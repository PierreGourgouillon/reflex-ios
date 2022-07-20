//
//  EditTimeView.swift
//  reflex iOS
//
//  Created by Pierre Gourgouillon on 20/07/2022.
//

import SwiftUI

struct EditTimeView: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        Text(String(appState.intervalTimerState.intervalTimerData.trainingTime))
    }
}

struct EditTimeView_Previews: PreviewProvider {
    static var previews: some View {
        EditTimeView()
    }
}
