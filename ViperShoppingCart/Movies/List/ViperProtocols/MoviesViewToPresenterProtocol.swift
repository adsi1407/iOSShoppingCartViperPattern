//
//  MoviesViewToPresenterDelegate.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 26/07/21.
//

protocol MoviesViewToPresenterProtocol: class {
    
    func fetchMovies()
    
    func navigateToMovieDetails(movie: MovieEntity)
}
