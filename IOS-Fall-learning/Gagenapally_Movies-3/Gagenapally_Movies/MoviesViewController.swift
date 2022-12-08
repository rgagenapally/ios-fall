//
//  MoviesViewController.swift
//  Gagenapally_Movies
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/21/22.
//

import UIKit

class MoviesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var movies:[Movie]!
    var label:String!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("test1")
        print(movies.count)
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("test2")
        print(indexPath)
        let cell = movieCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        print(movies[indexPath.row])
        print("before assignMovie")
        cell.assignMovie(with: movies[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("test3")
        assignMovieDetails(index: indexPath)
    }
  
    
    func assignMovieDetails(index: IndexPath){
        print("test4")
        movieNameLabel.text = "Movie title: \(movies[index.row].title)"
        movieRatingLabel.text = "Movie Rating: \(movies[index.row].movieRating)"
        movieBoxOfficeLabel.text = "Box Office Collection: \(movies[index.row].boxOffice)"
        //var l = movies[index.row].cast
        //print(l[0], l[1] ,l[2])
        var s:String = ""
        for l in movies[index.row].cast {
            if s.isEmpty {
                s = l
            }
            s = s+","+l
        }
        print(s)
        
        movieCastLabel.text = "Cast: \(s)"
        moviePlotLabel.text = "Plot: \n\(movies[index.row].moviePlot)"
        movieYearLabel.text = "Movie Released Year: \(movies[index.row].releasedYear)"
    }
     

    @IBOutlet weak var movieNameLabel: UILabel!
    
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    
    @IBOutlet weak var movieBoxOfficeLabel: UILabel!
    
    @IBOutlet weak var movieCastLabel: UILabel!
    

    @IBOutlet weak var moviePlotLabel: UILabel!
    
    
    
    @IBOutlet weak var movieYearLabel: UILabel!
    
    
    
    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(movies)
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
        self.title = label
        
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
