//
//  MoviesDetailRouter.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 15/07/21.
//

import UIKit

class MovieDetailRouter {
    
    func navigateToCart(movie: MovieEntity) {
        
        guard let navigationController = UIApplication.shared.keyWindow?.rootViewController as? UINavigationController else { return }
        
        let cartViewController = CartViewController()
        cartViewController.addMovie(movie: movie)
    }
}
