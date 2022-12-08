//
//  ViewController.swift
//  Gagenapally_TicketCheckoutApp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/3/22.
//

import UIKit

class AvalabilityCheckViewController: UIViewController {

    
    @IBOutlet weak var nameOutlet: UITextField!
    
    
    @IBOutlet weak var bookingIdOutlet: UITextField!
    
    
    @IBOutlet weak var statusOutlet: UILabel!
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    var tic:Ticket!
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageOutlet.image = UIImage(named: "default.png")
        checkoutTicketOutelt.isEnabled = false
        statusOutlet.text = "Status"
    }
    @IBOutlet weak var checkoutTicketOutelt: UIButton!
    
    @IBAction func avalabiltyCheckBTN(_ sender: UIButton) {
        statusOutlet.text = "Status"
        imageOutlet.image = UIImage(named: "default.png")
        for  t in TicketsArray{
            
            if t.bookingID == bookingIdOutlet.text! {
                imageOutlet.image = UIImage(named: t.airlineImage)
               // statusOutlet.text = ""
                statusOutlet.text = bookingIdOutlet.text! + " is found"
                checkoutTicketOutelt.isEnabled = true
                print(statusOutlet.text!)
                tic = t
            }
        }
        if statusOutlet.text == "Status" {
            statusOutlet.text = "Booking Id not found!"
            checkoutTicketOutelt.isEnabled = false
        }
      /*  if imageOutlet.isEqual("default.png"){
            
        }*/
        
        print(statusOutlet.text!)
        
    }
    @IBAction func CheckOutTicketBTN(_ sender: UIButton) {
        name = nameOutlet.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var trans = segue.identifier
        
        if trans == "checkoutSegue" {
            var destination = segue.destination as! CheckoutTicketViewController
            
            destination.t = tic
            destination.name = name
            print(destination.t)
            
            nameOutlet.text = ""
            bookingIdOutlet.text = ""
            statusOutlet.text = "Status"
            imageOutlet.image = UIImage(named: "default.png")
        }
    }
    
}

