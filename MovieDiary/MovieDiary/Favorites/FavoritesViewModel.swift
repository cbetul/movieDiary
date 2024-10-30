//
//  FavoritesViewModel.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 16.10.23.
//

import Foundation
import SwiftUI
// MARK: - FavoritesViewModel
/// ViewModel of the Favorites List
@Observable class FavoritesViewModel {
    var movieAppModel: MovieAppModel?

    init(_ movieAppModel: MovieAppModel) {
        self.movieAppModel = movieAppModel
    }
}
