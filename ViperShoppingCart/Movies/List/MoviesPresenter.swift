//
//  MoviesPresenter.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 14/07/21.
//

class MoviesPresenter {
    
    private var delegate: MoviesPresenterDelegate
    private var moviesInteractor: MoviesInteractor?
    private var moviesRouter: MoviesRouter?
    
    init(delegate: MoviesPresenterDelegate) {
        
        self.delegate = delegate
        setDelegates()
        moviesRouter = MoviesRouter()
    }
    
    private func setDelegates() {
        moviesInteractor = MoviesInteractor(delegate: self)
    }
    
    func fetchMovies() {
        moviesInteractor?.fetchMovies()
    }
    
    func navigateToMovieDetails(movie: MovieEntity) {
        moviesRouter?.navigateToMovieDetails(movie: movie)
    }
}

extension MoviesPresenter: MoviesInteractorDelegate {
    
    func showMovies(movies: [MovieEntity]) {
        delegate.showMovies(movies: movies)
    }
    
    func showError(message: String) {
        delegate.showError(message: message)
    }
}


