//
//  WatchlistFavoriteButtons.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 16.10.23.
//

import Foundation
import SwiftUI
import AlertToast

// MARK: - WatchlistFavoriteButtons
/// A view for the  "Add Watchlist" and "Like" buttons on Movie Detail Overview
struct WatchlistFavoriteButtons: View {
    @Bindable var movie: Movie
    @State private var showToast = false
    /// Inıtial size for the "Heart" shape animation in Add Favorite button
    @State private var heartSize: CGFloat = 16
    @State var alertText = ""
    var body: some View {
        HStack {
            Button(action: {
                /// It checks if the movie is in watchlist or not, if it s not the shows the button.
                movie.isInWatchlist.toggle()
                if movie.isInWatchlist {
                    /// Adjustment for the "alert message" when cllick on watchlist button
                    alertText = "Added to watchlist"
                } else {
                    alertText = "Removed from watchlist"
                }
                showToast.toggle()
            }) {
                /// Label for Add watchlist button
                Label("Watchlist", systemImage: movie.isInWatchlist ? "clock.fill" : "clock")
            }

            Button(action: {
                withAnimation {
                    /// Indicate an animation for the  Add Favorite button
                    movie.isFavorite.toggle()
                    if movie.isFavorite {
                        heartSize = 25
                    } else {
                        heartSize = 15
                    }
                }
            }) {
                /// Label for Add add favorite button
                Image(systemName: movie.isFavorite ? "heart.fill" : "heart")
                    .font(.system(size: heartSize))
                    .foregroundColor(.red)
            }
            /// Alerts when user clicks on watchlist button
            .toast(isPresenting: $showToast) {
                AlertToast(displayMode: .banner(.slide), type: .regular, title: alertText)
            }
        }
    }
}
