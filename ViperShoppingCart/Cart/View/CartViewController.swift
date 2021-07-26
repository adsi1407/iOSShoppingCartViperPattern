//
//  CartViewController.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 15/07/21.
//

import UIKit

class CartViewController: UIViewController {
    
    var moviesTableView: UITableView!
    
    private let titleText: String = "Cart"
    private var movies: [MovieEntity]?
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movies = [MovieEntity]()
        setViews()
    }
    
    func addMovie(movie: MovieEntity) {
        movies?.append(movie)
        moviesTableView?.reloadData()
    }
    
    private func setViews() {
        
        moviesTableView = UITableView()
        moviesTableView.dataSource = self
        moviesTableView.delegate = self
        moviesTableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(moviesTableView)
        
        moviesTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        moviesTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        moviesTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        moviesTableView.heightAnchor.constraint(equalToConstant: view.frame.height).isActive = true
    }
}

extension CartViewController: UITableViewDelegate, UITableViewDataSource {
    
    
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
}
