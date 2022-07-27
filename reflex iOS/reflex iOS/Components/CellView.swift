//
//  CellView.swift
//  reflex iOS
//
//  Created by Pierre Gourgouillon on 23/07/2022.
//

import SwiftUI

struct CellView: View {
    let imageName: String
    let title: String
    let value: String
    let color: Color

    var body: some View {
        HStack {
            Image(systemName: imageName)
                .font(.system(size: 21, weight: .semibold))
                .foregroundColor(color)
            Text(title)
                .font(.system(size: 18, weight: .bold))
                .padding(.leading, 10)
            Spacer()
            Text(value)
                .font(.system(size: 22, weight: .semibold))
                .foregroundColor(color)
        }
        .frame(height: 70)
        .padding(.horizontal, 20)
        .background(color.opacity(0.2))
        .cornerRadius(8)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(imageName: "play.circle", title: "Travail", value: "00:30", color: .green)
            .previewLayout(.sizeThatFits)
    }
}
