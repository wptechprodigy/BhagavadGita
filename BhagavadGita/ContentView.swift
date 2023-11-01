//
//  ContentView.swift
//  BhagavadGita
//
//  Created by waheedCodes on 29/07/2023.
//

import BGUtility
import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    var count = "2"
    var body: some View {
        NavigationView {
            VStack {
                Text("ContentView.bhagavad_gita_chapter \(count)")
                Text(L10n.ContentView.bhagavadGita)
            }
            .onAppear {
                viewModel.onAppear()
            }
        }
    }
}
