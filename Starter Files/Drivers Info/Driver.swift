//
//  Driver.swift
//  Formula 1 Drivers
//
//  Created by Juan Gabriel Gomila Salas on 03/06/2019.
//  Copyright © 2019 Frogames. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct Driver: Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var team: Team
    var age: Int
    var number: Int
    var birthPlace: String
}

struct Team {
    var color: Color
    var imageName: String
}

let mercedes = Team(color: Color(red: 79.0/255.0, green: 164.0/255.0, blue: 161.0/255.0), imageName: "car_mercedes")
let ferrari = Team(color: Color(red: 231.0/255.0, green: 50.0/255.0, blue: 40.0/255.0), imageName: "car_ferrari")
let redbull = Team(color: Color(red: 34.0/255.0, green: 44.0/255.0, blue: 54.0/255.0), imageName: "car_redbull")
let renault = Team(color: Color(red: 240.0/255.0, green: 238.0/255.0, blue: 95.0/255.0), imageName: "car_renault")
let mclaren = Team(color: Color(red: 240.0/255.0, green: 172.0/255.0, blue: 61.0/255.0), imageName: "car_mclaren")

let drivers = [
    Driver(id: 0, name: "Lewis Hamilton", imageName: "hamilton",
           team: mercedes, age: 34, number: 44 , birthPlace: "Reino Unido"),
    Driver(id: 1, name: "Valteri Bottas", imageName: "bottas",
           team: mercedes, age: 29, number: 77 , birthPlace: "Finlandia"),

    Driver(id: 2, name: "Sebastian Vettel", imageName: "vettel",
           team: ferrari, age: 32, number: 5 , birthPlace: "Alemania"),
    Driver(id: 3, name: "Charles Leclerc", imageName: "leclerc",
           team: ferrari, age: 21, number: 16 , birthPlace: "Mónaco"),

    Driver(id: 4, name: "Max Verstappen", imageName: "verstappen",
           team: redbull, age: 21, number: 33 , birthPlace: "Bélgica"),
    Driver(id: 5, name: "Pierre Gasly", imageName: "gasly",
           team: redbull, age: 23, number: 10 , birthPlace: "Francia"),

//    Driver(id: 6, name: "Nico Hulkenberg", imageName: "hulkenberg",
//           team: renault, age: 31, number: 27 , birthPlace: "Alemania"),
    Driver(id: 7, name: "Daniel Ricciardo", imageName: "ricciardo",
           team: renault, age: 29, number: 3 , birthPlace: "Australia"),

    Driver(id: 8, name: "Carlos Sainz", imageName: "sainz",
           team: mclaren, age: 24, number: 55 , birthPlace: "España"),
    Driver(id: 9, name: "Lando Norris", imageName: "norris",
           team: mclaren, age: 19, number: 4 , birthPlace: "Reino Unido")
]

