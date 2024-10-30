//
//  Watchlist.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 14.10.23.
//

import Foundation
import SwiftUI
// MARK: - Watchlist
/// View of the Watchlist
struct Watchlist: View {
    @Bindable var movieViewModel: MovieAppModel

    var body: some View {
        VStack {
            Text("Watchlist").font(.custom("Yellowtail-Regular", size:30))
            NavigationSplitView {
                List($movieViewModel.movies) { movie in
                    if movie.isInWatchlist.wrappedValue {
                        NavigationLink {
                            MovieDetailOverview(movie: movie.wrappedValue)
                        } label: {
                            MovieRow(movie: movie.wrappedValue)
                        }
                    }
                }
            } detail: {
                Text("Details")
            }
        }.padding()
    }
}
