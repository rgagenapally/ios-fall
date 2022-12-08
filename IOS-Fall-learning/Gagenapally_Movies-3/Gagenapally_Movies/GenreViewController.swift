//
//  ViewController.swift
//  Gagenapally_Movies
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/21/22.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = genres[indexPath.row].category
        return cell
    }
    

    @IBOutlet weak var genreTableView: UITableView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genreTableView.dataSource = self
        genreTableView.delegate = self
        // Do any additional setup after loading the view.
        self.title = "Movies App"
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var trans = segue.identifier
        if trans == "movieSegue" {
            var dest = segue.destination as! MoviesViewController
             dest.movies = genres[(genreTableView.indexPathForSelectedRow?.row)!].movies
            dest.label = genres[(genreTableView.indexPathForSelectedRow?.row)!].category
         }
    }
    

}

