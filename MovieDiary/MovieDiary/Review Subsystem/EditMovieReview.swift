//
//  EditMovieReview.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 15.10.23.
//
import SwiftUI
import SwiftData
// MARK: - EditMovieReview
/// Add / Edit Movie Review
struct EditMovieReview: View {
    @State private var viewModel: EditMovieReviewViewModel

    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationView {
            /// Creating a TextField type form
            Form {
                Section(header: Text("Review")) {
                    TextField("Write a review..", text: $viewModel.reviewContext)
                }
            }
            .navigationBarTitle("Add/Edit Review", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        viewModel.save()
                        dismiss()
                    }
                    /// Checks if there is fail while save button triggered, if it is then an alert message occurs.
                    .alert(isPresented: $viewModel.didFail) {
                        Alert(title: Text(viewModel.alertTitle), message: nil, dismissButton: .default(Text("OK")))
                    }
                }
            }
        }
    }
    ///  init for the edit movie review model
    init(_ model: Movie) {
        _viewModel = State(wrappedValue: EditMovieReviewViewModel(model))
    }
}
