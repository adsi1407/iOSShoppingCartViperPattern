//
//  CartViewControllerTest.swift
//  ViperShoppingCartTests
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 25/07/21.
//

import XCTest
@testable import ViperShoppingCart

class CartViewControllerTest: XCTestCase {
    
    private var cartViewController: CartViewController?
    
    override func setUp() {
        
        //Arrange
        cartViewController = CartViewController()
        cartViewController?.loadViewIfNeeded()
    }
    
    func test_viewdidLoad_tableViewCretedOnViewDidLoad_success() {

        //Act
        //Assert
        XCTAssertNotNil(cartViewController?.moviesTableView)
    }
    
    func test_addMovie_movieWithRightFields_success() {
        
        //Arrange
        var movie: MovieEntity = MovieEntity()
        movie.title = "Black Widow"
        movie.overview = "Natasha Romanoff, also known as Black Widow, confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises. Pursued by a force that will stop at nothing to bring her down, Natasha must deal with her history as a spy and the broken relationships left in her wake long before she became an Avenger."
        movie.adult = false
        movie.popularity = 6993.47
        movie.posterPath = "https://image.tmdb.org/t/p/w500/qAZ0pzat24kLdO3o8ejmbLxyOac.jpg"
        
        let expectedMovies = 1
        
        //Act
        cartViewController?.addMovie(movie: movie)
        
        //Assert
        XCTAssertEqual(cartViewController?.moviesTableView?.numberOfRows(inSection: 0), expectedMovies)
    }
}
