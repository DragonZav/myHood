//
//  ViewController.swift
//  myhood
//
//  Created by Chris Augg on 12/23/15.
//  Copyright © 2015 Auggie Doggie iOSware. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        var post = Post(imagePath: "", title: "The Bad House", description: "It is haunted!")
        var post2 = Post(imagePath: "", title: "The Yard of the Year", description: "These people have a lot of time on their hands.")
        var post3 = Post(imagePath: "", title: "Beware of Dog", description: "The deadliest poodle ever!")
        
        posts.append(post)
        posts.append(post2)
        posts.append(post3)
        
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row]
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
             return cell
        } else {
        
          let cell = PostCell()
          cell.configureCell(post)
          return cell
        }
       
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 86
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

  


}

