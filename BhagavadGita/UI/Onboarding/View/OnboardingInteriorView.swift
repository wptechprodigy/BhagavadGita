//
//  OnboardingInteriorView.swift
//  BhagavadGita
//
//  Created by waheedCodes on 23/04/2024.
//

import SwiftUI

struct OnboardingInteriorView: View {
    var onboardingModel: OnboardingModel
    @State private var isAnimating = false
    var body: some View {
        VStackLayout(spacing: 20) {
            Spacer().frame(height: 30)
            Image(onboardingModel.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1.0 : 0.5)
            Text(LocalizedStringKey(onboardingModel.title))
                .foregroundStyle(.black)
                .multilineTextAlignment(.center)
                .font(.title)
                .fontWeight(.heavy)
                .padding(.horizontal, 16)
            Text(LocalizedStringKey(onboardingModel.title))
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .font(.title3)
                .padding(.horizontal, 16)
            Spacer()
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}
