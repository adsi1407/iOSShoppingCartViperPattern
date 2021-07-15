//
//  MovieTableViewCell.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 15/07/21.
//

import Foundation
import UIKit
import Kingfisher

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var moviePopularity: UILabel!
    
    func initCell(title: String, popularity: String, imagePath: String){
        
        movieTitle.text = title
        moviePopularity.text = popularity
        
        let imgageUrl = URL(string: imagePath)
        movieImageView.kf.setImage(with: imgageUrl)
    }
}
