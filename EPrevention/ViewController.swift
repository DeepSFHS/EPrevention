//
//  ViewController.swift
//  EPrevention
//
//  Created by Deepankar Joshi on 4/15/17.
//  Copyright © 2017 CYC. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import GoogleMaps

class ViewController: UIViewController {

    
    @IBOutlet weak var GoogleMapContainer: UIView!
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.layer.borderWidth = 1
        image.layer.masksToBounds = false
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.cornerRadius = image.frame.height/2
        image.clipsToBounds = true
        
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

