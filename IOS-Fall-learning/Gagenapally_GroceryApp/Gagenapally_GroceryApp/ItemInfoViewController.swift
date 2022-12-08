//
//  ItemInfoViewController.swift
//  Gagenapally_GroceryApp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/15/22.
//

import UIKit

class ItemInfoViewController: UIViewController {
    
    var iteminfo:GroceryItem!
    @IBOutlet weak var itemImageViewOutlet: UIImageView!
    
    @IBOutlet weak var itemInfoOutlet: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = iteminfo.itemName
        
        itemImageViewOutlet.image = UIImage(named: iteminfo.itemImage)
            

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showItemInfoAction(_ sender: Any) {
        itemInfoOutlet.text = iteminfo.itemInfo
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
