//
//  MovieDiaryApp.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 12.10.23.
//

import SwiftUI
import OSLog
import AlertToast
// MARK: - MovieDiaryApp
/// The entry-point of the app.
@main
struct MovieDiaryApp: App {
    @State  var movieAppModel = MovieAppModel()
    @State  var showAlert = false
    @State  var alertMessage = ""

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(movieAppModel)
                .onAppear {
                    /// API call for the movie database.
                    loadMovieDatabase()
                    /// Adjustment for the alert if fails occurs while loading data
                    ///
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Network Error"),
                        message: Text(alertMessage)
                    )
                }
        }
    }

    /// API call function
    private func loadMovieDatabase() {
        Task {
            do {
                try await movieAppModel.loadMovieDatabase()
            } catch {
                /// If it is fails, it alerts and logs the error.
                Logger().error("Error loading movie database.")
                showAlert = true
                alertMessage = "We couldn't connect to the movie database. Please try again."
            }
        }
    }
}
