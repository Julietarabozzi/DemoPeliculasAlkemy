//
//  MovieDTO.swift
//  DemoPeliculasAlkemy
//
//  Created by María Julieta Rabozzi Orelo on 16/08/2022.
//

import Foundation

struct PageMovieDTO: Decodable {
    
    let page: Int?
    let results: [MovieDTO]
}

struct MovieDTO: Decodable {
    
    let id: Int?
    let title: String?
    let overview: String?
    let poster_path: String?
    let release_date: String?
    let vote_average: Double?
}

extension MovieDTO {
    
    var toMovie: Movie {
        Movie(self)
    }
}

extension Array where Element == MovieDTO {
    
    var toMovies: [Movie] {
        self.map({ $0.toMovie })
    }
    
}

