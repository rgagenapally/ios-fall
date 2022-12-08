//
//  MovieInfoViewController.swift
//  Gagenapally_MovieDisplayApp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/29/22.
//

import UIKit

class MovieInfoViewController: UIViewController {
    
    @IBOutlet weak var nameOutlet: UILabel!
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    @IBOutlet weak var castOutlet: UILabel!
    
    @IBOutlet weak var yearOutlet: UILabel!
    
    
    @IBOutlet weak var collectionOutlet: UILabel!
    
    var m:Movie!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = m.movieName
        nameOutlet.text = nameOutlet.text! + m.movieName
        imageViewOutlet.image = UIImage(named: m.movieImage)
        castOutlet.text = castOutlet.text! +  m.movieCast
        yearOutlet.text = yearOutlet.text! + m .movieReleasedYear
        collectionOutlet.text = collectionOutlet.text! +  m.boxOfficeCollection
        
        
        
        
        
        
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
