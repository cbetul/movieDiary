//
//  MovieHeaderView.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 16.10.23.
//

import Foundation
import SwiftUI

// MARK: - MovieHeaderView
/// A view for the adjustment of movie poster, movie director and release year as a header  in Movie Detail Overview
struct MovieHeaderView: View {
    @Bindable var movie: Movie

    var body: some View {
        VStack(alignment: .leading) {
            /// Adjustment for the movie poster image, size and location
            AsyncImage(url: URL(string: movie.movieDetails.poster), scale: 1)
                .offset(y: -10)
                .padding(.bottom, -10)
            Text(movie.movieDetails.title)
                .font(.title)
            HStack {
                Text(movie.movieDetails.director).foregroundColor(.secondary)
                Spacer()
                Text(movie.movieDetails.releaseYear).foregroundColor(.secondary)
            }
        }
    }
}
