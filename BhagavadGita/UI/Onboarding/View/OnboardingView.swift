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
                    OnboardingInteriorView(onboardingModel: viewModel.onboardingData[index])
                }
            }
            .tabViewStyle(PageTabViewStyle())
            VStack {
                Spacer()
                controlBar.padding()
                Spacer().frame(height: 60)
                if currentIndex < viewModel.onboardingData.count - 1 {
                    HStack {
                        Button {
                            currentIndex = viewModel.onboardingData.count - 1
                        } label: {
                            Text(L10n.onboardingSkip)
                                .foregroundStyle(Color.gray)
                        }
                        Spacer()
                        Button {
                            currentIndex += 1
                        } label: {
                            Text(L10n.onboardingNext)
                                .foregroundStyle(Color.orange)
                        }
                    }
                    .padding(40)
                } else {
                    HStack {
                        Button {
                            //
                        } label: {
                            Text(L10n.onboardingGetStarted)
                                .fontWeight(.bold)
                                .foregroundStyle(Color.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                        }
                        .background(Color.orange)
                        .cornerRadius(8.0)
                    }
                    .padding(25)
                }
            }
        }
    }

    @ViewBuilder
    private var controlBar: some View {
        HStack {
            Spacer()
            PageControl(currentPage: $currentIndex, numberOfPages: viewModel.onboardingData.count)
            Spacer()
        }
    }
}
