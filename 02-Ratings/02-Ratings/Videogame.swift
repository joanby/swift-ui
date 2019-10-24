//
//  Videogame.swift
//  02-Ratings
//
//  Created by Juan Gabriel Gomila Salas on 18/07/2019.
//  Copyright © 2019 Frogames. All rights reserved.
//

import SwiftUI
import Combine

struct Videogame : Identifiable {
    var id: UUID = UUID()
    
    var title: String = "Farcry"
    var rating: Double = 3.0
    var played : Bool = false
}

class VideogameStore : BindableObject {

    let didChange = PassthroughSubject<Void, Never>()
    
    var videogames : [Videogame]{
        didSet{
            didChange.send()
        }
    }
    
    init(){
        var vg1 = Videogame()
        vg1.title = "Farcry 5"
        vg1.played = true
        vg1.rating = 4
        
        var vg2 = Videogame()
        vg2.title = "Assassin's Creed Origin"
        
        var vg3 = Videogame()
        vg3.title = "Resident Evil 2"
        vg3.played = true
        
        videogames = [vg1, vg2, vg3]
    }
    
    func AddVideogame(videogame:Videogame){
        videogames.append(videogame)
    }
}
