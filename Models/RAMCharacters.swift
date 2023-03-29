//
//  RAMCharacters.swift
//  RIckAndMorty
//
//  Created by Oleg Rybin on 3/7/23.
// copy Jsson code form api

import Foundation


struct RMCharacter: Codable {
    
        let id: Int
        let name: String
        let status: RMCharcterStatus
        let species: String
        let type:String
        let gender: RMCharctergender
        let origin: RMOrigin 
        let location: RMSingleLocation
        let image: String
        let episode: [String]
        let url: String
        let created: String
        
    }


    
    
   
    
    



 
