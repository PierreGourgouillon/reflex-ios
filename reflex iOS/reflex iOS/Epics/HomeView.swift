//
//  HomeView.swift
//  reflex iOS
//
//  Created by Pierre Gourgouillon on 20/07/2022.
//

import SwiftUI

struct HomeView: View {

    @ObservedObject var viewModel: HomeViewModel = HomeViewModel()

    var body: some View {
        Text(viewModel.getBeautifulTimer())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
