//
//  ViewController.swift
//  Gagenapally_BillApp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 10/4/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var totPriceBeforeDisOutlet: UILabel!
    
    
    @IBOutlet weak var totPriceAfterDisOutlet: UILabel!
    
    @IBOutlet weak var prodNameOutlet: UITextField!
    
    
    @IBOutlet weak var unitsOutlet: UITextField!
    
    var totalPriceBeforeDis = 0.0
    var totalPriceAfterDis = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //calculating  the discount
    @IBAction func calculateButton(_ sender: Any) {
        print(prodNameOutlet.text!)
        print(unitsOutlet.text!)
        
        if(prodNameOutlet.text!.elementsEqual("Perfume")){
            totalPriceBeforeDis = 10 * Double(unitsOutlet.text!)!
            totalPriceAfterDis = totalPriceBeforeDis - (totalPriceBeforeDis * 2/100)
            //print(totalPriceBeforeDis)
            //print(totalPriceAfterDis)
            totPriceBeforeDisOutlet.text = "Total price before discount for Perfume is \(totalPriceBeforeDis)"
            
            totPriceAfterDisOutlet.text = "Total price after discount for Perfume is \(totalPriceAfterDis)"
        }
        else if(prodNameOutlet.text!.elementsEqual("T-Shirt")){
            totalPriceBeforeDis = 35 * Double(unitsOutlet.text!)!
            totalPriceAfterDis = totalPriceBeforeDis - (totalPriceBeforeDis * 4/100)
            //print(totalPriceBeforeDis)
            //print(totalPriceAfterDis)
            totPriceBeforeDisOutlet.text = "Total price before discount for T-Shirt is \(totalPriceBeforeDis)"
            
            totPriceAfterDisOutlet.text = "Total price after discount for T-Shirt is \(totalPriceAfterDis)"
        }
        
        else {
            totalPriceBeforeDis = 0
            totalPriceAfterDis = 0
            //print(Int(totalPriceBeforeDis))
            //print(Int(totalPriceAfterDis))
            totPriceBeforeDisOutlet.text = "Total price before discount for Other products is \(Int(totalPriceBeforeDis))"
            
            totPriceAfterDisOutlet.text = "Total price after discount for Other products is \(Int(totalPriceAfterDis))"
        }
    }
    
    


}

