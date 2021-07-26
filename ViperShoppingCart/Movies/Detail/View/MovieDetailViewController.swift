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
    
    //UI References
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieOverviewLabel: UILabel!

    //VIPER Protocols
    private var movieDetailPresenter: MovieDetailViewToPresenterProtocol
    
    //Private Fields
    private var movie: MovieEntity?
    
    init(movieDetailPresenter: MovieDetailViewToPresenterProtocol) {
        self.movieDetailPresenter = movieDetailPresenter
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        movieDetailPresenter.navigateToCart(movie: unwrappedMovie)
    }
}
