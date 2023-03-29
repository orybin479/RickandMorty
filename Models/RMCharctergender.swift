//
//  RMCharctergender.swift
//  RIckAndMorty
//
//  Created by Oleg Rybin on 3/29/23.
//

import Foundation
enum RMCharctergender: String, Codable {
    // female Male Genderless or unkown set by api
    case male = "Male"
    case female = "Female"
    case Genderless = "Genderless"
    case unkown = "unkown"
}
