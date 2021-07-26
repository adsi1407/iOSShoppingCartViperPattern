//
//  MoviesDetailRouter.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 15/07/21.
//

import UIKit

class MovieDetailRouter {
    
    class func createModule() -> UIViewController {
        
        let presenter = MovieDetailPresenter()
        let view = MovieDetailViewController(movieDetailPresenter: presenter)

        return view
    }
    
    func navigateToCart(movie: MovieEntity) {
        
        guard let navigationController = UIApplication.shared.keyWindow?.rootViewController as? UINavigationController else { return }
        
        let moviesTabBar = navigationController.viewControllers[0] as! TabBarController
        moviesTabBar.selectedIndex = 1
        
        let cartViewController = moviesTabBar.viewControllers?[1] as! CartViewController
        cartViewController.addMovie(movie: movie)
    }
}
