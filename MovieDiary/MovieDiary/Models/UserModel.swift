//
//  UserModel.swift
//  MovieDiary
//
//  Created by Betül Çimendağ on 12.10.23.
//

import Foundation
import Observation
// MARK: - User
/// User Model
@Observable class User {
    var name: String
    var username: String
    var password: String
    var location: String?
    var age: Int
    var gender: String?

    init(
        name: String,
        username: String,
        password: String,
        location: String? = nil,
        age:Int,
        gender:String? = nil) {
        self.name = name
        self.username = username
        self.password = password
        self.location = location
        self.age = age
        self.gender = gender
    }
}
