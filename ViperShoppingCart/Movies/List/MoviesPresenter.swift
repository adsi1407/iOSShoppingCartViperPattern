//
//  MoviesPresenter.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 14/07/21.
//

class MoviesPresenter: MoviesViewToPresenterProtocol {
    
    weak var delegate: MoviesPresenterToViewDelegate?
    private let moviesInteractor: MoviesPresenterToInteractorProtocol
    private let moviesRouter: MoviesRouter
    
    init(moviesInteractor: MoviesPresenterToInteractorProtocol) {
        
        self.moviesInteractor = moviesInteractor
        moviesRouter = MoviesRouter()
    }
    
    func fetchMovies() {
        moviesInteractor.fetchMovies()
    }
    
    func navigateToMovieDetails(movie: MovieEntity) {
        moviesRouter.navigateToMovieDetails(movie: movie)
    }
}

extension MoviesPresenter: MoviesInteractorToPresenterDelegate {
    
    func showMovies(movies: [MovieEntity]) {
        delegate?.showMovies(movies: movies)
    }
    
    func showError(message: String) {
        delegate?.showError(message: message)
    }
}


