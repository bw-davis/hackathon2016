//
//  BaselineViewController.swift
//  Hackathon2016
//
//  Created by Frazer Bayley on 10/15/16.
//  Copyright © 2016 Mac Owner. All rights reserved.
//

import UIKit

class BaselineViewController: UIViewController {
    var dataArray: Array<Int> = []
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBAction func nextButtonPressed(sender: UINavigationItem){
        
    }
    @IBAction func startButtonPress1(button sender: UIButton){
        sender.backgroundColor = UIColor.cyanColor()
        switch sender {
        case button1:
            print("button1 was pressed")
            dataArray.append(1)
        case button2:
            print("button2 was pressed")
            dataArray.append(2)
        case button3:
            dataArray.append(3)
        case button4:
            dataArray.append(4)
        case button5:
            dataArray.append(5)
        case button6:
            dataArray.append(6)
        default:
            break
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let question2 = segue.destinationViewController as! Question2ViewController
        question2.dataArray = self.dataArray
    }
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
    }
}

