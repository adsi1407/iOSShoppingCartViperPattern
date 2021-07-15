//
//  MoviesInteractor.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 14/07/21.
//

class MoviesInteractor {
    
    private let delegate: MoviesInteractorDelegate
    private let errorMessage = "No hay películas"
    
    init(delegate: MoviesInteractorDelegate) {
        self.delegate = delegate
    }
    
    func fetchMovies() {
        
        let moviesRepository = MoviesRepository()
        let movies = moviesRepository.fetchMovies()
        
        if movies.count > 0 {
            delegate.showMovies(movies: movies)
        }
        else {
            delegate.showError(message: errorMessage)
        }
    }
}
