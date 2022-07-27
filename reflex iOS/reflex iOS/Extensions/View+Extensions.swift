//
//  View+Extensions.swift
//  reflex iOS
//
//  Created by Pierre Gourgouillon on 23/07/2022.
//

import Foundation
import SwiftUI

extension View {
    func fullScreen(alignment: Alignment) -> some View {
        self
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: alignment)
    }

    func setNavBar(title: String, systemNameImage: String? = nil,
                   titleColor: Color, backgroundColor: Color) -> some View {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor(backgroundColor)
        coloredAppearance.shadowColor = .clear
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance

        return self
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    if let systemNameImage = systemNameImage {
                        Image(systemName: systemNameImage)
                            .foregroundColor(.white)
                            .font(.system(size: 17, weight: .semibold))
                    }
                    Text(title)
                        .font(.headline)
                        .foregroundColor(titleColor)
                }
            }
        }
    }
}
