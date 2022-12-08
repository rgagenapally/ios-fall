//
//  MovieCollectionViewCell.swift
//  Gagenapally_Movies
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/26/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ImageViewOutlet: UIImageView!
    
    func assignMovie(with movie: Movie){
        ImageViewOutlet.image = movie.image
    }
}
