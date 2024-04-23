//
//  OnboardingViewModel.swift
//  BhagavadGita
//
//  Created by waheedCodes on 12/12/2023.
//

import Foundation

class OnboardingViewModel: ObservableObject {
    @Published var onboardingData = [OnboardingModel]()
    private let localJSONLoader: LocalJSONLoader
    init() {
        localJSONLoader = LocalJSONLoader()
        loadOnboardingData()
    }

    func loadOnboardingData() {
        guard let response: [OnboardingModel] = localJSONLoader.load("Onboarding") else {
            return
        }
        onboardingData = response
    }
}
