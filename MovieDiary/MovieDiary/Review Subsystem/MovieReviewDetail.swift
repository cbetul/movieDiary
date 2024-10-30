//
//  MovieReviewDetail.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 15.10.23.
//

import Foundation
import SwiftUI
// MARK: - MovieReviewDetail
/// View for the movie reviews
struct MovieReviewDetail: View {
    @Bindable var movie: Movie

    var body: some View {
        VStack {
            Text("Movie Review")
                .font(.title)
                .foregroundColor(.primary)
            /// View for the movie poster
            AsyncImage(url: URL(string: movie.movieDetails.poster), scale: 2)
                .frame(maxWidth: .infinity)
                .frame(height: 300)
                .padding(.bottom, 10)

            Text("Title:")
                .font(.headline)
                .foregroundColor(.secondary)
            Text(movie.movieDetails.title)
                .font(.title)
                .foregroundColor(.primary)
            /// View the review
            Text("Review:")
                .font(.headline)
                .foregroundColor(.secondary)
            Text(movie.review)
                .foregroundColor(.primary)
        }
        .padding()
    }
}

/*#Preview {
 MovieReviewDetail(movie: Movie)
 }*/
