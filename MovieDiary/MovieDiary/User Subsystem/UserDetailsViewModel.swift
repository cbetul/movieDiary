//
//  UserDetailsViewModel.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 12.10.23.
//

import Foundation
import SwiftUI

// MARK: - UserDetailsViewModel
/// ViewModel for the User

@Observable class UserDetailsViewModel {
    var currentUser = User(name: "Betül", username: "betulc", password: "abcd123", age:23)
}
