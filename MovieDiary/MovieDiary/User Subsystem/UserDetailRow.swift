//
//  UserDetailRow.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 16.10.23.
//

import Foundation
import SwiftUI
// MARK: - UserDetailRow
/// View for the user details as a row
struct UserDetailRow: View {
    var label: String
    var value: String

    var body: some View {
        HStack {
            Text(label)
                .foregroundStyle(.secondary)
            Text(value)
        }
    }
}
