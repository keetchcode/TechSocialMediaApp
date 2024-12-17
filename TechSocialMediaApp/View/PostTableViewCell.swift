//
//  PostTableViewCell.swift
//  TechSocialMediaApp
//
//  Created by Wesley Keetch on 11/5/24.
//

import UIKit

class PostTableViewCell: UITableViewCell {
  
  static let identifier = "PostTableViewCell"
  
  @IBOutlet weak var timestampLabel: UILabel!
  @IBOutlet weak var postBodyLabel: UILabel!
  @IBOutlet weak var profileImageView: UIImageView!
  @IBOutlet weak var postImage: UIImageView!
  @IBOutlet weak var userLabel: UILabel!
  @IBOutlet weak var likesLabel: UILabel!
  @IBOutlet weak var commentsLabel: UILabel!
  @IBOutlet weak var sharesLabel: UILabel!
  
  func configure(with post: Post) {
    userLabel?.text = post.username
    likesLabel?.text = "❤️ \(post.likes)"
    commentsLabel?.text = "💬 \(post.comments)"
    sharesLabel?.text = "↗️ \(post.shares)"
    postBodyLabel?.text = post.content
    postImage?.image = post.image
    
    if let profileImage = post.profileImage {
      profileImageView?.image = profileImage
    } else {
      profileImageView?.image = UIImage(systemName: "person.circle")
    }
    
    profileImageView?.layer.cornerRadius = profileImageView.frame.size.width / 2
    profileImageView?.clipsToBounds = true
    
    if let postImage = post.image {
      self.postImage?.image = postImage
      self.postImage?.isHidden = false
    } else {
      self.postImage?.isHidden = true
    }
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .short
    timestampLabel?.text = dateFormatter.string(from: post.timestamp)
  }
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
    self.contentView.layer.cornerRadius = 30
    self.contentView.layer.masksToBounds = false
    self.contentView.layer.shadowColor = UIColor.black.cgColor
    self.contentView.layer.shadowOpacity = 0.1
    self.contentView.layer.shadowOffset = CGSize(width: 0, height: 5)
    self.contentView.layer.shadowRadius = 8
    // Initialization code
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
}
