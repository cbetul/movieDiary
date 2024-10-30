//
//  WatchlistViewModel.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 16.10.23.
//

import Foundation
import SwiftUI
// MARK: - WatchlistViewModel
/// ViewModel of the Watchlist
@Observable class WatchlistViewModel {
    var movieAppModel: MovieAppModel

    init(_ movieAppModel: MovieAppModel) {
        self.movieAppModel = movieAppModel
    }
}
