//
//  MainMenu.swift
//  Hackathon2016
//
//  Created by Mac Owner on 10/15/16.
//  Copyright © 2016 Mac Owner. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {
//    override func viewDidLoad(){
//        super.viewDidLoad()
//        
//    }
//    
//    
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        // Do any additional setup after loading the view.
    }
    
    func assignbackground(){
        let background = UIImage(named: "background.png")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.ScaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
}
