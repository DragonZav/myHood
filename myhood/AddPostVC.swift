//
//  AddPostVC.swift
//  myhood
//
//  Created by Chris Augg on 12/23/15.
//  Copyright © 2015 Auggie Doggie iOSware. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {

    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var descField: UITextField!
    @IBOutlet weak var titleField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true

    }

    
    
    @IBAction func addPicButtonPressed(sender: UIButton) {
        sender.setTitle("", forState: .Normal)
    }
    
    @IBAction func makePostButtonPressed(sender: AnyObject) {
        
    }

    @IBAction func cancelButtonPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        
    }
}
