//
//  EditTimeView.swift
//  reflex iOS
//
//  Created by Pierre Gourgouillon on 20/07/2022.
//

import SwiftUI

struct EditTimeView: View {
    @EnvironmentObject var appState: AppState
    @State private var isEditing = false

    @Binding var value: Float
    let title: String
    let range: ClosedRange<Float>
    let step: Int

    var body: some View {
        VStack {
            Text(appState.intervalTimerData.getBeautifulTimer())
            Slider(value: $value,
                   in: range,
                   step: Float.Stride(step)) { editing in
                isEditing = editing
            }
        }
    }
}

struct EditTimeView_Previews: PreviewProvider {
    static var previews: some View {
        let appState = AppState()
        EditTimeView(value: .constant(50), title: "Hello", range: 0...100, step: 1)
            .environmentObject(appState)
    }
}
