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
    let systemName: String
    let backgroundColor: Color

    var valueToDisplay: String {
        switch title {
        case "Exercices":
            return String(Int(value))
        case "Rounds":
            return "\(Int(value))X"
        default:
            return value.getBeautifulTimer()
        }
    }

    var body: some View {
        VStack {
            Text(valueToDisplay)
                .font(.system(size: 50, weight: .semibold))
                .foregroundColor(.white)
            Spacer()
            Slider(value: $value,
                   in: range,
                   step: Float.Stride(step)) { editing in
                isEditing = editing
            }
        }
        .fullScreen(alignment: .center)
        .background(backgroundColor)
        .navigationBarTitleDisplayMode(.inline)
        .setNavBar(title: title, systemNameImage: systemName, titleColor: .white, backgroundColor: .clear)
    }
}

struct EditTimeView_Previews: PreviewProvider {
    static var previews: some View {
        let appState = AppState()
        EditTimeView(value: .constant(50), title: "Hello", range: 0...100,
                     step: 1, systemName: "pause.circle", backgroundColor: .red)
            .environmentObject(appState)
    }
}
