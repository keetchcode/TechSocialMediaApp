//
//  EditPostViewController.swift
//  TechSocialMediaApp
//
//  Created by Wesley Keetch on 12/3/24.
//

import UIKit

class EditPostViewController: UIViewController {
  
  private var post: Post
  private var onSave: ((Post) -> Void)
  
  private let textView: UITextView = {
    let textView = UITextView()
    textView.font = .systemFont(ofSize: 16)
    textView.translatesAutoresizingMaskIntoConstraints = false
    return textView
  }()
  
  init(post: Post, onSave: @escaping (Post) -> Void) {
    self.post = post
    self.onSave = onSave
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemBackground
    title = "Post"
    setupUI()
  }
  
  private func setupUI() {
    view.addSubview(textView)
    textView.text = post.content
    
    NSLayoutConstraint.activate([
      textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
      textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
      textView.heightAnchor.constraint(equalToConstant: 200)
    ])
  }
  
  @objc private func savePost() {
    post.content = textView.text
    onSave(post)
    navigationController?.popViewController(animated: true)
  }
}
