//
//  ContentView.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 12.10.23.
//

import SwiftUI
// MARK: - ContentView
/// Includes tabViews
struct ContentView: View {
    @Environment(MovieAppModel.self) private var movieAppModel: MovieAppModel

    var body: some View {
        NavigationStack {
            TabView {
                MovieListOverview()
                    .tabItem {
                        Label("Movies", systemImage: "list.dash")
                    }
                Favorites(movieViewModel: movieAppModel)
                    .tabItem {
                        Label("Favorites", systemImage: "heart.fill")
                    }
                Watchlist(movieViewModel: movieAppModel)
                    .tabItem {
                        Label("Watchlist", systemImage: "clock")
                    }
                MovieReviewList(movieViewModel: movieAppModel)
                    .tabItem {
                        Label("Reviews", systemImage: "book")
                    }
                UserOverview()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
