//
//  MovieEntity.swift
//  ViperShoppingCart
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 14/07/21.
//

import Foundation

struct MovieEntity: Codable {
    
    var adult: Bool?
    var backdropPath: String?
    var id: Int?
    var originalTitle: String?
    var overview: String?
    var popularity: Double?
    var posterPath: String?
    var title: String?
    var releaseDate:String?
    var video: Bool?
    var voteAverage: Double?
    var voteCount: Int?
    
    init() {}
        
    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case id
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
