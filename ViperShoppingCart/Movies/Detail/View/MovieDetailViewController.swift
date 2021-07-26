//
//  MovieDetailViewController.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 15/07/21.
//

import Foundation
import UIKit
import Kingfisher

class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieOverviewLabel: UILabel!
    
    private var movie: MovieEntity?
    private var movieDetailPresenter: MovieDetailPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        
        movieDetailPresenter = MovieDetailPresenter()
    }
    
    func setMovie(movie: MovieEntity) {
        self.movie = movie
    }
    
    private func setViews() {
        
        guard let unwrappedMovie = movie else { return }
        
        let imgageUrl = URL(string: unwrappedMovie.posterPath!)
        movieImageView.kf.setImage(with: imgageUrl)
        
        movieTitleLabel.text = unwrappedMovie.title!
        movieOverviewLabel.text = unwrappedMovie.overview!
    }
    
    @IBAction func addToCart(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
        guard let unwrappedMovie = movie else { return }
        movieDetailPresenter?.navigateToCart(movie: unwrappedMovie)
    }
}
