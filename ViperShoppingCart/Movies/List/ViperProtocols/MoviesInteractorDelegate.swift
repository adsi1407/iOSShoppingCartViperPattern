//
//  MoviesInteractorDelegate.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 15/07/21.
//

protocol MoviesInteractorDelegate {
    
    func showMovies(movies: [MovieEntity])
    
    func showError(message: String)
    
}
