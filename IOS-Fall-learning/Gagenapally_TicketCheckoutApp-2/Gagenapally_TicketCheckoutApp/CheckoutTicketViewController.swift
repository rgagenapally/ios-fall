//
//  CheckoutTicketViewController.swift
//  Gagenapally_TicketCheckoutApp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/3/22.
//

import UIKit

class CheckoutTicketViewController: UIViewController {

    var name = ""
    var messgae = ""
    var image = ""
    
    var t:Ticket!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!
   
    
    @IBOutlet weak var imageOutput: UIImageView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name + " your checkout was succesfull!!"
        messageLabel.text = name + " you will be flying through " + t.airlineName
        imageOutput.image = UIImage(named: t.airlineImage)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
