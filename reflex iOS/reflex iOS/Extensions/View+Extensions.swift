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

    func setNavBar(title: String, image: Image? = nil, titleColor: Color) -> some View {
        self
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    image
                    Text(title)
                        .font(.headline)
                        .foregroundColor(titleColor)
                }
            }
        }
    }
}
