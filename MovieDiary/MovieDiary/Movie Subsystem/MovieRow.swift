//
//  MovieRow.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 14.10.23.
//

import Foundation
import SwiftUI

// MARK: - MovieRow (single cell)
/// A cell representing a single `Movie`
struct MovieRow: View {
    @Bindable var movie: Movie

    var body: some View {
        HStack {
            /// Adjustmens for the movie poster
            AsyncImage(url: URL(string: movie.movieDetails.poster), scale: 5)
                .frame(width: 50, height: 50).padding()
            Text(movie.movieDetails.title)
            Spacer()
            /// "Heart" shape which declares the movie is liked or not
            Image(systemName: movie.isFavorite ? "heart.fill" : "heart")
                .foregroundStyle(.red)
        }
    }
}
