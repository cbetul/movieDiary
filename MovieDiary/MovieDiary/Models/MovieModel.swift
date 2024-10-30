//
//  MovieModel.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 12.10.23.
//

import Foundation
import Observation
// MARK: - Movie
/// Movie Model
@Observable class Movie: Identifiable {
    var movieDetails: MovieDetails
    var isFavorite = false
    var isInWatchlist = false
    var isReviewed = false
    var review: String = ""

    init(id: String,
         title: String,
         genre: String,
         releaseYear: String,
         poster: String,
         director: String,
         plot: String) {
        movieDetails = MovieDetails(
            id: id,
            title: title,
            genre: genre,
            releaseYear: releaseYear,
            poster: poster,
            director: director,
            plot: plot
        )
    }

    init(movie: MovieDetails) {
        movieDetails = movie
    }
}

/// variables adjusted for the API
struct MovieDetails: Codable, Identifiable {
    var id: String
    var title: String
    var genre: String
    var releaseYear: String
    var poster: String
    var director: String
    var plot: String

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case genre = "Genre"
        case director = "Director"
        case plot = "Plot"
        case releaseYear = "Year"
        case id = "imdbID"
        case poster = "Poster"
    }
}
