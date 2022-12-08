//
//  ViewController.swift
//  Gagenapally_GroceryApp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/15/22.
//

import UIKit

class GrocerySectionsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var sectionName = ""
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grocery.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = grocerySectionsTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = grocery[indexPath.row].section
        return cell
    }
    
    
    
    @IBOutlet weak var grocerySectionsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        grocerySectionsTableView.dataSource = self
        grocerySectionsTableView.delegate = self
        self.title = "Grocery Section"
    }
        
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let trans = segue.identifier
        if trans == "itemsSegue" {
            let destination = segue.destination as! GroceryItemsViewController
            destination.name = grocery[(grocerySectionsTableView.indexPathForSelectedRow?.row)!].section
            destination.array = grocery[(grocerySectionsTableView.indexPathForSelectedRow?.row)!].items_Array
            //self.title = "Grocery Section"
        }
    }

    
}

