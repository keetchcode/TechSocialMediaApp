//
//  ViewController.swift
//  TechSocialMediaApp
//
//  Created by Wesley Keetch on 10/8/24.
//

import UIKit

class UserProfileViewController: UIViewController {

  @IBOutlet weak var profilePic: UIImageView!
  @IBOutlet weak var userName: UILabel!
  @IBOutlet weak var userID: UILabel!
  @IBOutlet weak var followerLabel: UILabel!
  @IBOutlet weak var bioLabel: UILabel!
  @IBOutlet weak var recentPostLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func followButton(_ sender: Any) {
  }
}
