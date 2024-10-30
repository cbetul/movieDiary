//
//  Favorites.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 16.10.23.
//

import Foundation
import SwiftUI
// MARK: - Favorites
/// Views the Favorites List
struct Favorites: View {
    @Bindable var movieViewModel: MovieAppModel

    var body: some View {
        VStack {
            Text("Favorites").font(.custom("Yellowtail-Regular", size:30))
            NavigationSplitView {
                List($movieViewModel.movies) { movie in
                    if movie.isFavorite.wrappedValue {
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
