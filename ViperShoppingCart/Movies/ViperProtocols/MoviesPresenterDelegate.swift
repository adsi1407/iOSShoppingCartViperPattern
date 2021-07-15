//
//  MoviesPresenterDelegate.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 14/07/21.
//

protocol MoviesPresenterDelegate {
    
    func showMovies(movies: [MovieEntity])
    
    func showError(message: String)
    
}
