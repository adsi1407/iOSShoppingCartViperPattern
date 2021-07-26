//
//  MoviesInteractorDelegate.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 15/07/21.
//

protocol MoviesInteractorToPresenterDelegate: class {
    
    func showMovies(movies: [MovieEntity])
    
    func showError(message: String)
    
}
