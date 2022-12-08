//
//  GroceryItemsViewController.swift
//  Gagenapally_GroceryApp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/15/22.
//

import UIKit

class GroceryItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  var name = ""
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = groceryItemsTableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        cell.textLabel?.text = array[indexPath.row].itemName
        return cell
    }
    

    @IBOutlet weak var groceryItemsTableView: UITableView!
    
    var array:[GroceryItem]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groceryItemsTableView.delegate = self
        groceryItemsTableView.dataSource = self
      self.title = name     // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let trans = segue.identifier
        if trans == "itemInfoSegue" {
            let destination = segue.destination as! ItemInfoViewController
            destination.iteminfo = array[(groceryItemsTableView.indexPathForSelectedRow?.row)!].self
            //self.title = name
        }
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
