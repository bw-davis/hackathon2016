//
//  BaselineViewController.swift
//  Hackathon2016
//
//  Created by Frazer Bayley on 10/15/16.
//  Copyright © 2016 Mac Owner. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
    var dataArray: Array<Int> = []
    var result = 0
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        for theNumber in dataArray {
            result += theNumber
        }
        switch result {
        case 15...19:
            button2.backgroundColor = UIColor.cyanColor()
        case 10...14:
            button3.backgroundColor = UIColor.cyanColor()
        case 5...9:
            button4.backgroundColor = UIColor.cyanColor()
        case 0...4:
            button5.backgroundColor = UIColor.cyanColor()
        default:
            button1.backgroundColor = UIColor.cyanColor()
        }
        print(dataArray)
    }
}

