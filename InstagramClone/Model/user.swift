//
//  user.swift
//  InstagramClone
//
//  Created by Lucas Newlands on 18/05/23.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageURL: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USER: [User] = [
        .init(id: NSUUID().uuidString, username: "Batman", profileImageURL: "batmanImage" , fullname: "Bruce Wayne", bio: "Gotham's Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Venom", profileImageURL: "venomImage" , fullname: "Eddie Brock", bio: "I'm Venom.", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Iron Man", profileImageURL: "ironManImage" , fullname: "Tony Stark", bio: "I'm Iron Man", email: "ironman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Batman", profileImageURL: "batmanImage" , fullname: "Bruce Wayne", bio: "Gotham's Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Venom", profileImageURL: "venomImage" , fullname: "Eddie Brock", bio: "I'm Venom.", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Iron Man", profileImageURL: "ironManImage" , fullname: "Tony Stark", bio: "I'm Iron Man", email: "ironman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Batman", profileImageURL: "batmanImage" , fullname: "Bruce Wayne", bio: "Gotham's Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Venom", profileImageURL: "venomImage" , fullname: "Eddie Brock", bio: "I'm Venom.", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Iron Man", profileImageURL: "ironManImage" , fullname: "Tony Stark", bio: "I'm Iron Man", email: "ironman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Batman", profileImageURL: "batmanImage" , fullname: "Bruce Wayne", bio: "Gotham's Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Venom", profileImageURL: "venomImage" , fullname: "Eddie Brock", bio: "I'm Venom.", email: "venom@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Iron Man", profileImageURL: "ironManImage" , fullname: "Tony Stark", bio: "I'm Iron Man", email: "ironman@gmail.com"),
    ]
}
