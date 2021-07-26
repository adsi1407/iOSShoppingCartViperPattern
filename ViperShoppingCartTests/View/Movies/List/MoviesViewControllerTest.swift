//
//  MoviesViewControllerTest.swift
//  ViperShoppingCartTests
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 23/07/21.
//

import XCTest
@testable import ViperShoppingCart

class MoviesViewControllerTest: XCTestCase {
    
    private var moviesViewController: MoviesViewController?
    
    override func setUp() {
        
        //Arrange
        moviesViewController = MoviesViewController()
        moviesViewController?.loadViewIfNeeded()
    }
    
    func test_viewdidLoad_tableViewCretedOnViewDidLoad_success() {

        //Act
        //Assert
        XCTAssertNotNil(moviesViewController?.moviesTableView)
    }
    
    func test_viewdidLoad_titleOnViewDidLoad_success() {
        
        //Act
        //Assert
        XCTAssertEqual("Movies", moviesViewController?.title)
    }
    
    func test_showMovies_setMoviesFromDelegate_success() {
        
        //Arrange
        var movies: [MovieEntity] = []
        
        var movie: MovieEntity = MovieEntity()
        movie.title = "Black Widow"
        movie.overview = "Natasha Romanoff, also known as Black Widow, confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises. Pursued by a force that will stop at nothing to bring her down, Natasha must deal with her history as a spy and the broken relationships left in her wake long before she became an Avenger."
        movie.adult = false
        movie.popularity = 6993.47
        movie.posterPath = "https://image.tmdb.org/t/p/w500/qAZ0pzat24kLdO3o8ejmbLxyOac.jpg"
        movies.append(movie)
        
        let expectedRows = 1
        
        //Act
        moviesViewController?.showMovies(movies: movies)
        
        //Assert
        XCTAssertEqual(moviesViewController?.moviesTableView?.numberOfRows(inSection: 0), expectedRows)
    }
}
