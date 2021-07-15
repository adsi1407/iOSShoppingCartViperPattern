//
//  MoviesRouter.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 15/07/21.
//

import Foundation
import UIKit

class MoviesRouter {
    
    func navigateToMovieDetails(movie: MovieEntity) {
        
        guard let navigationController = UIApplication.shared.keyWindow?.rootViewController as? UINavigationController else { return }
        
        let movieDetailViewController = MovieDetailViewController()
        movieDetailViewController.setMovie(movie: movie)
        navigationController.present(movieDetailViewController, animated: false)
    }
}
