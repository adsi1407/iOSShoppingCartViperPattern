//
//  TabBarController.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 14/07/21.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Shopping Center"
        
        let moviesViewController = MoviesViewController()
        moviesViewController.tabBarItem.image = UIImage(systemName: "film")
        
        let cartViewController = CartViewController()
        cartViewController.tabBarItem.image = UIImage(systemName: "cart")
        
        setViewControllers([moviesViewController, cartViewController], animated: false)
    }
}
