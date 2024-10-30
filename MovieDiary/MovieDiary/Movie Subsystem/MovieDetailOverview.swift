//
//  MovieDetailOverview.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 13.10.23.
//

import SwiftUI
import AlertToast

// MARK: - MovieDetailOverview
/// Shows all details of the selected 'Movie'

struct MovieDetailOverview: View {
    @Bindable var movie: Movie
    /// Adjustments for hte button initializers
    @State private var showToast = false
    @State private var heartSize: CGFloat = 16
    @State private var alertText = ""

    var body: some View {
        ScrollView {
            MovieHeaderView(movie: movie).padding()
            WatchlistFavoriteButtons(movie: movie)
            AddReviewButton(movie: movie)
            Divider()
            Text("Details")
                .font(.title2)
            Divider()
            Text(movie.movieDetails.plot)
        }
    }
}
