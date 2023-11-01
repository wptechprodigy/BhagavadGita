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
            VStack {
                Text(L10n.ContentView.bhagavadGitaChapter(count))
                Text(L10n.ContentView.bhagavadGita)
                Text("ContentView.bhagavad_gita_chapter \(count)")
                Text(L10n.ContentView.bhagavad)
            }
            .onAppear {
                viewModel.onAppear()
            }
        }
    }
}
