//
//  MoviesRepository.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 15/07/21.
//

import Foundation

class MoviesRepository {
    
    func fetchMovies() -> [MovieEntity] {
        
        var movies: [MovieEntity] = []
        
        var movie: MovieEntity = MovieEntity()
        movie.title = "Black Widow"
        movie.overview = "Natasha Romanoff, also known as Black Widow, confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises. Pursued by a force that will stop at nothing to bring her down, Natasha must deal with her history as a spy and the broken relationships left in her wake long before she became an Avenger."
        movie.adult = false
        movie.popularity = 6993.47
        movie.posterPath = "https://image.tmdb.org/t/p/w500/qAZ0pzat24kLdO3o8ejmbLxyOac.jpg"
        movies.append(movie)
        
        movie = MovieEntity()
        movie.title = "The Boss Baby: Family Business"
        movie.overview = "The Templeton brothers — Tim and his Boss Baby little bro Ted — have become adults and drifted away from each other. But a new boss baby with a cutting-edge approach and a can-do attitude is about to bring them together again … and inspire a new family business."
        movie.adult = false
        movie.popularity = 4740.239
        movie.posterPath = "https://image.tmdb.org/t/p/w500/5dExO5G2iaaTxYnLIFKLWofDzyI.jpg"
        movies.append(movie)
        
        movie = MovieEntity()
        movie.title = "Luca"
        movie.overview = "Luca and his best friend Alberto experience an unforgettable summer on the Italian Riviera. But all the fun is threatened by a deeply-held secret: they are sea monsters from another world just below the water’s surface."
        movie.adult = false
        movie.popularity = 3858.007
        movie.posterPath = "https://image.tmdb.org/t/p/w500/jTswp6KyDYKtvC52GbHagrZbGvD.jpg"
        movies.append(movie)
        
        movie = MovieEntity()
        movie.title = "Infinite"
        movie.overview = "Evan McCauley has skills he never learned and memories of places he has never visited. Self-medicated and on the brink of a mental breakdown, a secret group that call themselves “Infinites” come to his rescue, revealing that his memories are real."
        movie.adult = false
        movie.popularity = 2864.999
        movie.posterPath = "https://image.tmdb.org/t/p/w500/niw2AKHz6XmwiRMLWaoyAOAti0G.jpg"
        movies.append(movie)
        
        movie = MovieEntity()
        movie.title = "F9"
        movie.overview = "Dominic Toretto and his crew battle the most skilled assassin and high-performance driver they've ever encountered: his forsaken brother."
        movie.adult = false
        movie.popularity = 2660.781
        movie.posterPath = "https://image.tmdb.org/t/p/w500/bOFaAXmWWXC3Rbv4u4uM9ZSzRXP.jpg"
        movies.append(movie)
        
        movie = MovieEntity()
        movie.title = "A Quiet Place Part II"
        movie.overview = "Following the events at home, the Abbott family now face the terrors of the outside world. Forced to venture into the unknown, they realize that the creatures that hunt by sound are not the only threats that lurk beyond the sand path."
        movie.adult = false
        movie.popularity = 1738.065
        movie.posterPath = "https://image.tmdb.org/t/p/w500/4q2hz2m8hubgvijz8Ez0T2Os2Yv.jpg"
        movies.append(movie)
        
        movie = MovieEntity()
        movie.title = "Cruella"
        movie.overview = "In 1970s London amidst the punk rock revolution, a young grifter named Estella is determined to make a name for herself with her designs. She befriends a pair of young thieves who appreciate her appetite for mischief, and together they are able to build a life for themselves on the London streets. One day, Estella’s flair for fashion catches the eye of the Baroness von Hellman, a fashion legend who is devastatingly chic and terrifyingly haute. But their relationship sets in motion a course of events and revelations that will cause Estella to embrace her wicked side and become the raucous, fashionable and revenge-bent Cruella."
        movie.adult = false
        movie.popularity = 1710.563
        movie.posterPath = "https://image.tmdb.org/t/p/w500/rTh4K5uw9HypmpGslcKd4QfHl93.jpg"
        movies.append(movie)
        
        return movies
    }
}
