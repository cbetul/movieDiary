//
//  MovieListOverview.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 14.10.23.
//

import Foundation
import SwiftUI

// MARK: - MovieListOverview
/// View creating all `Movies` as a navigation list
struct MovieListOverview: View {
    @Environment(MovieAppModel.self) private var movieAppModel: MovieAppModel

    var body: some View {
        VStack {
            Text("Movie Diary").font(.custom("Yellowtail-Regular", size:30))

            NavigationSplitView {
                List(movieAppModel.movies) { movie in
                    NavigationLink {
                        /// It navigates the details of the movie
                        MovieDetailOverview(movie: movie)
                    } label: {
                        /// Creating rows calling with movieRow
                        MovieRow(movie: movie)
                    }
                }
            } detail: {
                Text("Details")
            }
        }
    }
}
