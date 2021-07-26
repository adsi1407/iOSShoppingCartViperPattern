//
//  MoviesViewController.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 14/07/21.
//

import Foundation
import UIKit

class MoviesViewController: UIViewController {
    
    //UI References
    @IBOutlet weak var moviesTableView: UITableView!
    
    //VIPER Protocols
    private var moviesPresenter: MoviesViewToPresenterProtocol
    
    //Private Fields
    private let titleText: String = "Movies"
    private var movies: [MovieEntity]?
    
    init(moviesPresenter: MoviesViewToPresenterProtocol) {
        self.moviesPresenter = moviesPresenter
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = titleText
        moviesTableView.dataSource = self
        moviesTableView.delegate = self
        moviesTableView.rowHeight = UITableView.automaticDimension
        
        moviesPresenter.fetchMovies()
    }
}

extension MoviesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let unwrapedMovies = movies else { return 0 }
        return unwrapedMovies.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("MovieTableViewCell", owner: self, options: nil)?.first as! MovieTableViewCell
        
        let movie = movies![indexPath.row]
        cell.initCell(title: movie.title!, popularity: String(format: "%.1f", movie.popularity!), imagePath: movie.posterPath!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moviesPresenter.navigateToMovieDetails(movie: movies![indexPath.row])
    }
}

extension MoviesViewController: MoviesPresenterToViewDelegate {
    
    func showMovies(movies: [MovieEntity]) {
        self.movies = movies
    }

    func showError(message: String) {
        self.movies = [MovieEntity]()
        print("Hubo un error consultando las películas")
    }
}
