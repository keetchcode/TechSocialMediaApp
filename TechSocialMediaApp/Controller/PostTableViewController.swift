//
//  TimelineTableViewController.swift
//  TechSocialMediaApp
//
//  Created by Wesley Keetch on 11/5/24.
//

import UIKit

class PostTableViewController: UITableViewController {

  private var posts: [Post] = [] {
    didSet {
      tableView.reloadData()
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Posts"
    view.backgroundColor = .systemBackground
    setupTableView()
    setupNavigationBar()
    loadDummyData()
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.navigationBar.isHidden = false
  }

  private func setupTableView() {
    tableView.dataSource = self
    tableView.delegate = self
  }

  private func setupNavigationBar() {
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addPost))
  }

  private func loadDummyData() {
    posts = PostData.posts
  }

  @objc private func addPost() {
    let alertController = UIAlertController(title: "New Post", message: "Enter post details", preferredStyle: .alert)
    alertController.addTextField { textField in
      textField.placeholder = "Post Content"
    }
    let addAction = UIAlertAction(title: "Add", style: .default) { [weak self] _ in
      guard let self = self, let content = alertController.textFields?.first?.text, !content.isEmpty else { return }
      let newPost = Post(userID: "newUser", username: "New User", profileImage: nil, content: content, image: nil, likes: 0, comments: 0, shares: 0, timestamp: Date())
      self.posts.append(newPost)
    }
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
    alertController.addAction(addAction)
    alertController.addAction(cancelAction)
    present(alertController, animated: true, completion: nil)
  }
}

// MARK: - UITableViewDataSource
extension PostTableViewController {
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return posts.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as? PostTableViewCell else {
      fatalError("Failed to dequeue PostTableViewCell")
    }
    let post = posts[indexPath.row]
    cell.configure(with: post)
    return cell
  }
}

// MARK: - UITableViewDelegate
extension PostTableViewController {
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    let post = posts[indexPath.row]
    let editVC = EditPostViewController(post: post) { [weak self] updatedPost in
      self?.posts[indexPath.row] = updatedPost
    }
    navigationController?.pushViewController(editVC, animated: true)
  }
}
