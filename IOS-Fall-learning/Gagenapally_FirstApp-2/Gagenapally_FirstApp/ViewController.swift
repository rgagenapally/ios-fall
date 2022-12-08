//
//  ViewController.swift
//  Gagenapally_FirstApp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 9/2/22.
//

import UIKit

class ViewController: UIViewController {

    var resetValue = false
    @IBOutlet weak var firstNameTextField: UILabel!
    
    
    @IBOutlet weak var lastNameTextField: UILabel!
    
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    
    @IBOutlet weak var firstNameOutlet: UITextField!
    
    @IBOutlet weak var lastNameOutlet: UITextField!
    
    
    @IBOutlet weak var Details: UILabel!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        fullNameLabel.text = "Full Name: \(lastNameOutlet.text!), \(firstNameOutlet.text!)"
        
       
        initialsLabel.text = "Initials :\(String(firstNameOutlet.text!.prefix(1)).uppercased()+String(lastNameOutlet.text!.prefix(1)).uppercased())"
        
        Details.text = "Details"
        
        resetValue = true
    }
    

    @IBAction func onClickOfReset(_ sender: UIButton) {
       if(resetValue)
        {
           fullNameLabel.text = " "
           Details.text = ""
           initialsLabel.text = ""
           lastNameOutlet.text = ""
           firstNameOutlet.text = ""
           
       }
        
    }
    
}

