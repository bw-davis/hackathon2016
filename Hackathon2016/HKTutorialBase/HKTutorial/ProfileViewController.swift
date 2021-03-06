//
//  ProfileViewController.swift
//  HKTutorial
//
//  Created by ernesto on 18/10/14.
//  Copyright (c) 2014 raywenderlich. All rights reserved.
//

import UIKit
import HealthKit

class ProfileViewController: UITableViewController {
  
  let UpdateProfileInfoSection = 2
  let SaveBMISection = 3
  let kUnknownString   = "Unknown"
  
  @IBOutlet var ageLabel:UILabel!
  @IBOutlet var bloodTypeLabel:UILabel!
  @IBOutlet var biologicalSexLabel:UILabel!
  @IBOutlet var weightLabel:UILabel!
  @IBOutlet var heightLabel:UILabel!
  @IBOutlet var bmiLabel:UILabel!
  
  var healthManager:HealthManager?
  var bmi:Double?
  
  
  
  func updateHealthInfo() {
    
    updateProfileInfo();
    updateWeight();
    updateHeight();
    
  }
  
  func updateProfileInfo()
  {
    print("TODO: update profile Information")
  }
  
  
  func updateHeight()
  {
    print("TODO: update Height")
    
  }
  
  func updateWeight()
  {
    print("TODO: update Weight")
  }
  
  func updateBMI()
  {
    print("TODO: update BMI")
    
  }
  
  func saveBMI() {
    
    print("TODO: save BMI sample")
    
  }
  // MARK: - utility methods
  func calculateBMIWithWeightInKilograms(_ weightInKilograms:Double, heightInMeters:Double) -> Double?
  {
    if heightInMeters == 0 {
      return nil;
    }
    return (weightInKilograms/(heightInMeters*heightInMeters));
  }
  
  
  func biologicalSexLiteral(_ biologicalSex:HKBiologicalSex?)->String
  {
    var biologicalSexText = kUnknownString;
    
    if  biologicalSex != nil {
      
      switch( biologicalSex! )
      {
      case .female:
        biologicalSexText = "Female"
      case .male:
        biologicalSexText = "Male"
      default:
        break;
      }
      
    }
    return biologicalSexText;
  }
  
  func bloodTypeLiteral(_ bloodType:HKBloodType?)->String
  {
    
    var bloodTypeText = kUnknownString;
    
    if bloodType != nil {
      
      switch( bloodType! ) {
      case .aPositive:
        bloodTypeText = "A+"
      case .aNegative:
        bloodTypeText = "A-"
      case .bPositive:
        bloodTypeText = "B+"
      case .bNegative:
        bloodTypeText = "B-"
      case .abPositive:
        bloodTypeText = "AB+"
      case .abNegative:
        bloodTypeText = "AB-"
      case .oPositive:
        bloodTypeText = "O+"
      case .oNegative:
        bloodTypeText = "O-"
      default:
        break;
      }
      
    }
    return bloodTypeText;
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath , animated: true)
    
    switch ((indexPath as NSIndexPath).section, (indexPath as NSIndexPath).row)
    {
    case (UpdateProfileInfoSection,0):
      updateHealthInfo()
    case (SaveBMISection,0):
      saveBMI()
    default:
      break;
    }
    
    
  }
  
}
