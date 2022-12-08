//
//  ViewController.swift
//  Gagenapally_MovieDisplayApp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/29/22.
//

import UIKit

class MovieSectionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MovieArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "movieSectionCell", for: indexPath)
        cell.textLabel?.text = MovieArray[indexPath.row].movieName
        return cell
    }
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Movie Section"
        // Do any additional setup after loading the view.
        tableViewOutlet.dataSource = self
        tableViewOutlet.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let trans = segue.identifier
        if trans == "movieInfoSegue" {
            var dest = segue.destination as! MovieInfoViewController
            dest.m = MovieArray[tableViewOutlet.indexPathForSelectedRow!.row].self
        }
    }

}

