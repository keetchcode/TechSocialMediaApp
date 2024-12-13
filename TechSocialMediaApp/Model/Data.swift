//
//  Data.swift
//  TechSocialMediaApp
//
//  Created by Wesley Keetch on 12/4/24.
//

import Foundation
import UIKit

struct PostData {
  static let posts: [Post] = [
    Post(
      userID: "sam123",
      username: "Sam Malone",
      profileImage: UIImage(named: "sam_profile"),
      content: "Serving up drinks and wisdom at Cheers!",
      image: UIImage(named: "sam"),
      likes: Int.random(in: 10...100),
      comments: Int.random(in: 1...20),
      shares: Int.random(in: 0...10),
      timestamp: Date().addingTimeInterval(TimeInterval.random(in: -7200...0))
    ),
    Post(
      userID: "diane456",
      username: "Diane Chambers",
      profileImage: UIImage(named: "diane_profile"),
      content: "Reading poetry at the bar... again.",
      image: UIImage(named: "diane"),
      likes: Int.random(in: 5...75),
      comments: Int.random(in: 1...15),
      shares: Int.random(in: 0...8),
      timestamp: Date().addingTimeInterval(TimeInterval.random(in: -7200...0))
    ),
    Post(
      userID: "norm789",
      username: "Norm Peterson",
      profileImage: UIImage(named: "norm_profile"),
      content: "Another round, please! 🍺",
      image: UIImage(named: "norm"),
      likes: Int.random(in: 15...150),
      comments: Int.random(in: 2...25),
      shares: Int.random(in: 0...12),
      timestamp: Date().addingTimeInterval(TimeInterval.random(in: -7200...0))
    ),
    Post(
      userID: "cliff987",
      username: "Cliff Clavin",
      profileImage: UIImage(named: "cliff_profile"),
      content: "Fun fact: Cheers is the best bar in Boston!",
      image: UIImage(named: "cliff"),
      likes: Int.random(in: 10...120),
      comments: Int.random(in: 3...18),
      shares: Int.random(in: 1...9),
      timestamp: Date().addingTimeInterval(TimeInterval.random(in: -7200...0))
    ),
    Post(
      userID: "rebecca111",
      username: "Rebecca Howe",
      profileImage: UIImage(named: "rebecca_profile"),
      content: "Trying to keep Sam in line... again.",
      image: UIImage(named: "rebecca"),
      likes: Int.random(in: 20...130),
      comments: Int.random(in: 5...20),
      shares: Int.random(in: 0...10),
      timestamp: Date().addingTimeInterval(TimeInterval.random(in: -7200...0))
    ),
    Post(
      userID: "frasier222",
      username: "Frasier Crane",
      profileImage: UIImage(named: "frasier_profile"),
      content: "The psychology of bar conversations is fascinating.",
      image: UIImage(named: "frasier"),
      likes: Int.random(in: 25...140),
      comments: Int.random(in: 7...22),
      shares: Int.random(in: 0...11),
      timestamp: Date().addingTimeInterval(TimeInterval.random(in: -7200...0))
    ),
    Post(
      userID: "carla333",
      username: "Carla Tortelli",
      profileImage: UIImage(named: "carla_profile"),
      content: "Serving drinks and throwing shade.",
      image: UIImage(named: "carla"),
      likes: Int.random(in: 10...110),
      comments: Int.random(in: 4...19),
      shares: Int.random(in: 0...9),
      timestamp: Date().addingTimeInterval(TimeInterval.random(in: -7200...0))
    ),
    Post(
      userID: "woody444",
      username: "Woody Boyd",
      profileImage: UIImage(named: "woody_profile"),
      content: "Learning the ropes and having fun!",
      image: UIImage(named: "woody"),
      likes: Int.random(in: 15...125),
      comments: Int.random(in: 3...17),
      shares: Int.random(in: 0...8),
      timestamp: Date().addingTimeInterval(TimeInterval.random(in: -7200...0))
    ),
    Post(
      userID: "lilith555",
      username: "Lilith Sternin",
      profileImage: UIImage(named: "lilith_profile"),
      content: "Analyzing the social dynamics of Cheers.",
      image: UIImage(named: "lillith"),
      likes: Int.random(in: 10...115),
      comments: Int.random(in: 5...20),
      shares: Int.random(in: 0...10),
      timestamp: Date().addingTimeInterval(TimeInterval.random(in: -7200...0))
    ),
    Post(
      userID: "coach666",
      username: "Coach Ernie",
      profileImage: UIImage(named: "coach_profile"),
      content: "Miss the good old days at Cheers.",
      image: UIImage(named: "coach"),
      likes: Int.random(in: 30...150),
      comments: Int.random(in: 8...25),
      shares: Int.random(in: 1...12),
      timestamp: Date().addingTimeInterval(TimeInterval.random(in: -7200...0))
    )
  ]
}

