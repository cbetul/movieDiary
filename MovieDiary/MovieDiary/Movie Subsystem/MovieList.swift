//
//  MovieList.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 14.10.23.
//

import SwiftUI

// MARK: - MovieList
/// View displaying all `Movies`
struct MovieList: View {
    @Bindable var MovieAppModel: MovieAppModel

    var body: some View {
        VStack {
            /// Calls the movieListOverview to create whole movie list
            MovieListOverview()
        }
    }
}
