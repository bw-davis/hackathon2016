//
//  BaselineViewController.swift
//  Hackathon2016
//
//  Created by Frazer Bayley on 10/15/16.
//  Copyright © 2016 Mac Owner. All rights reserved.
//

import UIKit

class Question15ViewController: UIViewController {
    var dataArray: Array<Int> = []
    
    @IBAction func startButtonPress1(button sender: UIButton){
        sender.backgroundColor = UIColor.cyanColor()
      
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let data = segue.destinationViewController as! DataViewController
        data.dataArray = self.dataArray
    }
    override func viewDidLoad(){
        super.viewDidLoad()
        print(dataArray)
    }
}

