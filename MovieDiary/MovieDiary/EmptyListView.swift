//
//  EmptyListView.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 16.10.23.
//

import Foundation
import SwiftUI
// MARK: - EmptyListView
/// default view for the if  lists are empty,
struct EmptyListView: View {
    var body: some View {
        VStack {
            Text("No items to display.")
                .font(.title)
                .foregroundColor(.gray)
        }
    }
}
