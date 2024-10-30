//
//  MovieDetailsViewModel.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 12.10.23.
//

import Foundation
import SwiftUI
// MARK: - MovieAppModel
/// Movie App Model
@Observable class MovieAppModel {
    /// strings for the api call
    var movieTitles: [String] = [
        "frances+ha", "la+haine", "kes",
        "lost+highway", "stroszek", "uncut+gems",
        "arizona+dream", "dogville", "chungking+express",
        "il+posto", "scarface"
    ]
    /// Keeps the loaded movies
    var movies: [Movie] = []

    /// Load movie database function, handles the API call
    func loadMovieDatabase() async throws {
        for movieString in movieTitles {
            guard let url = URL(string: "https://www.omdbapi.com/?t=\(movieString)&apikey=419a366e") else {
                throw URLError(.cannotLoadFromNetwork)
            }

            let (data, _) = try await URLSession.shared.data(from: url)

            let movieApi = try MovieAppModel.decodeJSON(from: data)

            self.movies.append(Movie(movie: movieApi))


            print(movies)
        }
    }
}

/// Decoder and Encoder

extension MovieAppModel {
    public static func encodeJSON(from movie: MovieDetails) throws -> Data {
        let encoder = JSONEncoder()
        return try encoder.encode(movie)
    }
    public static func decodeJSON(from data: Data) throws -> MovieDetails {
        let decoder = JSONDecoder()
        return try decoder.decode(MovieDetails.self, from: data)
    }
}
