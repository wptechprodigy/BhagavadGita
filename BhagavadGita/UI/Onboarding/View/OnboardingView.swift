//
//  OnboardingView.swift
//  BhagavadGita
//
//  Created by waheedCodes on 12/12/2023.
//

import Foundation
import SwiftUI

struct OnboardingView: View {
    @ObservedObject var viewModel = OnboardingViewModel()
    @State private var currentIndex = 0
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $currentIndex) {
                ForEach(0 ..< viewModel.onboardingData.count, id: \.self) { index in
                    Text("\(index)")
                }
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}
