//
//  CartViewController.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 15/07/21.
//

import UIKit

class CartViewController: UIViewController {
    
    private var movie: MovieEntity?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
    }
    
    func addMovie(movie: MovieEntity) {
        self.movie = movie
    }
    
    private func setViews() {
        
        guard let unwrappedMovie = movie else { return }
        
        let imgageUrl = URL(string: unwrappedMovie.posterPath!)
    }
}
