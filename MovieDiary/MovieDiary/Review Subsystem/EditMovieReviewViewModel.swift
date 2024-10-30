//
//  EditMovieReviewViewModel.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 16.10.23.
//

import Foundation
import SwiftUI
// MARK: - EditMovieReviewViewModel
/// Add /  Edit MovieReviewViewModel
@Observable class EditMovieReviewViewModel {
    var reviewContext = ""
    var didFail = false
    var alertTitle: String = "Save Failed"

    private var movie: Movie?

    init(_ movie: Movie) {
        self.movie = movie
    }
    /// Checks if the form is valid or not (if textfield empty or  not)
    var isFormValid: Bool {
        !reviewContext.isEmpty
    }

    func save() {
        if !reviewContext.isEmpty {
            movie?.review = reviewContext
            movie?.isReviewed = true
        } else {
            /// this creates alert message if there is no review but save button triggered
            alertTitle = "Please add a review to save."
            didFail = true
        }
    }
}
