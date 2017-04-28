//
//  ViewTwo.swift
//  EPrevention
//
//  Created by Deepankar Joshi on 4/17/17.
//  Copyright © 2017 CYC. All rights reserved.
//

import Foundation
import UIKit
import FBSDKLoginKit

class ViewTwo : UIViewController {
    

    @IBOutlet weak var facebook: UIButton!
    @IBOutlet weak var camera: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        camera.layer.borderWidth = 1
        camera.layer.masksToBounds = false
        camera.layer.borderColor = UIColor.orange.cgColor
        camera.layer.cornerRadius = camera.frame.height/2.37
        camera.clipsToBounds = true
        
        let mycolor = UIColor(rgb: 0x3b5998)
        facebook.layer.borderWidth = 5
        facebook.layer.masksToBounds = false
        facebook.layer.borderColor = mycolor.cgColor
        facebook.clipsToBounds = true
        

        
        let loginButton = FBSDKLoginButton()
        view.addSubview(loginButton)
        loginButton.frame = CGRect(x: 16, y: 50, width: view.frame.width - 32, height: 50)
            }

    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Did log out of facebook")
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult, error: Error!) {
        if error != nil {
            print (error)
            return
        }
        
        print("Successfully logged in with Facebook.....")
    }
}
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, a: Int = 0xFF) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: CGFloat(a) / 255.0
        )
    }
    
    // let's suppose alpha is the first component (ARGB)
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
