//
//  MoviesDetailPresenter.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 15/07/21.
//

class MovieDetailPresenter: MovieDetailViewToPresenterProtocol {
    
    private var movieDetailRouter: MovieDetailRouter
    
    init() {
        movieDetailRouter = MovieDetailRouter()
    }
    
    func navigateToCart(movie: MovieEntity) {
        movieDetailRouter.navigateToCart(movie: movie)
    }
}
