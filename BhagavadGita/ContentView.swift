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
    var count = "2"
    var body: some View {
        NavigationView {
            Text("ContentView.bhagavad_gita_chapter \(count)")
                .onAppear {
                    viewModel.onAppear()
                }
        }
    }
}
