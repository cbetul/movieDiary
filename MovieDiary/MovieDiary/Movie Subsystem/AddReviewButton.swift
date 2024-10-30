//
//  AddReviewButton.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 16.10.23.
//

import Foundation
import SwiftUI
// MARK: - AddReviewButton
/// A view for the  "Add Review" button on Movie Detail Overview
struct AddReviewButton: View {
    @State var movie: Movie

    var body: some View {
        /// Navigation link when user click on the "Add Review" it directs edit review View
        NavigationLink(destination: EditMovieReview(movie)) {
            Label("Add Review", systemImage: movie.isReviewed ? "book.fill" : "book")
        }
    }
}
