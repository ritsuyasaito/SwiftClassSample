//
//  ViewController.swift
//  ClassSample
//
//  Created by 齋藤律哉 on 2020/07/10.
//  Copyright © 2020 ritsuya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    
    
    @IBOutlet var timelineTableView: UITableView!
    
    var posts = [Post]()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        timelineTableView.dataSource = self
        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "TimelineTableViewCell", bundle: nil)
        timelineTableView.register(nib, forCellReuseIdentifier: "TimelineTableViewCell")
        
        timelineTableView.rowHeight = 500
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TimelineTableViewCell") as! TimelineTableViewCell
        cell.userNameLabel.text = posts[indexPath.row].name
        cell.userImageView.image = posts[indexPath.row].userImage
        cell.postImageView.image = posts[indexPath.row].postImage
        cell.textView.text = posts[indexPath.row].text
        return cell
    }
    
    @IBAction func didTapButton() {
        makeInstance()
        timelineTableView.reloadData()
    }
    
    func makeInstance(){
        
        let post1 = Post(userName: "ドラえもん", userImage: UIImage(named: "Human1.jpg")!, image: UIImage(named: "Picture1.jpg")!)
        
        let post2 = Post(userName: "ルフィー", userImage: UIImage(named: "Human2.png")!, image: UIImage(named: "Picture2.jpg")!)
        post2.text = "オプショナルだから任意"
        
        let post3 = Post(userName: "サザエ", userImage: UIImage(named: "Human3.png")!, image: UIImage(named: "Picture3.jpeg")!)
        post3.text = "デデーン"
        
        posts.append(post1)
        posts.append(post2)
        posts.append(post3)
        
    }


}

