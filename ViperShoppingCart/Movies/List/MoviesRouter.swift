//
//  MoviesRouter.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 15/07/21.
//

import Foundation
import UIKit

class MoviesRouter {
    
    class func createModule() -> UIViewController {
        
        let interactor = MoviesInteractor()
        let presenter = MoviesPresenter(moviesInteractor: interactor)
        let view = MoviesViewController(moviesPresenter: presenter)

        presenter.delegate = view
        interactor.delegate = presenter
        
        return view
    }
    
    func navigateToMovieDetails(movie: MovieEntity) {
        
        guard let navigationController = UIApplication.shared.keyWindow?.rootViewController as? UINavigationController else { return }
        
        let movieDetailViewController = MovieDetailRouter.createModule() as! MovieDetailViewController
        movieDetailViewController.setMovie(movie: movie)
        navigationController.present(movieDetailViewController, animated: false)
    }
}
