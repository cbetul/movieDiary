//
//  UserOverview.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 13.10.23.
//

import SwiftUI

// MARK: - UserOverview
/// View of the User details
struct UserOverview: View {
    @State var userViewModel = UserDetailsViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            /// Symbol for user image
            Image(systemName: "person")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("User")
                .font(.title)
            Divider()
            /// Current user details
            UserDetailRow(label: "Name", value: userViewModel.currentUser.name)
            UserDetailRow(label: "Username", value: userViewModel.currentUser.username)
            UserDetailRow(label: "Age", value: "\(userViewModel.currentUser.age)")
        }
        .padding()
    }
}

#Preview {
    UserOverview()
}
