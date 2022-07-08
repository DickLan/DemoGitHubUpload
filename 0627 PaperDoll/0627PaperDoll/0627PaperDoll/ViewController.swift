//
//  ViewController.swift
//  0627PaperDoll
//
//  Created by mac on 2022/6/27.
//  Copyright © 2022 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }



    
    @IBAction func First(_ sender: Any) {
        image2.isHidden = true
        image1.isHidden = false
    }
    
    @IBAction func Second(_ sender: Any) {
        image1.isHidden = true
        image2.isHidden = false
    }
    
    
}


