//
//  ContentView.swift
//  BhagavadGita
//
//  Created by waheedCodes on 29/07/2023.
//

import SwiftUI
import BGUtility

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    var body: some View {
        NavigationView {
            Text("Select an item")
                .onAppear {
                    viewModel.onAppear()
                }
        }
    }
}
