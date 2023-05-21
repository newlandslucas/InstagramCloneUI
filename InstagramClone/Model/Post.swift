//
//  Post.swift
//  InstagramClone
//
//  Created by Lucas Newlands on 18/05/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timeStamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This some test caption for now",
              likes: 12,
              imageUrl: "batmanImage",
              timeStamp: Date(),
              user: User.MOCK_USER[0]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This some test caption for now",
              likes: 100,
              imageUrl: "venomImage",
              timeStamp: Date(),
              user: User.MOCK_USER[1]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This some test caption for now",
              likes: 12,
              imageUrl: "ironManImage",
              timeStamp: Date(),
              user: User.MOCK_USER[2]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This some test caption for now",
              likes: 12,
              imageUrl: "batmanImage",
              timeStamp: Date(),
              user: User.MOCK_USER[0]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This some test caption for now",
              likes: 100,
              imageUrl: "venomImage",
              timeStamp: Date(),
              user: User.MOCK_USER[1]),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This some test caption for now",
              likes: 12,
              imageUrl: "ironManImage",
              timeStamp: Date(),
              user: User.MOCK_USER[2]),
    ]
}
