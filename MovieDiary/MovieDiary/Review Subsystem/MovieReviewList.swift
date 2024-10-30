//
//  MovieReviewList.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 15.10.23.
//

import Foundation
import SwiftUI
// MARK: - MovieReviewList
/// Lists all the reviewed movies
struct MovieReviewList: View {
    @Bindable var movieViewModel: MovieAppModel

    var body: some View {
        VStack {
            Text("Reviews").font(.custom("Yellowtail-Regular", size:30))
            List($movieViewModel.movies) { movie in
                if movie.isReviewed.wrappedValue {
                    NavigationLink {
                        /// navigates to the review detail
                        MovieReviewDetail(movie:movie.wrappedValue)
                    } label: {
                        MovieRow(movie: movie.wrappedValue)
                    }
                }
            }
        }.padding()
    }
}


/*#Preview {
 MovieReviewList()
 }*/
