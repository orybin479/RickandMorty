//
//  RMRequest.swift
//  RIckAndMorty
//
//  Created by Oleg Rybin on 3/29/23.
//

import Foundation

/// Obkect that represents a single API call
final class RMRequest {
    
    
    //API Constants
   
    
    private struct Conttants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    /// Desired endpoint
   private let endpoint: RMEndpoint
    /// path componets for API IF any
   private let pathComponents: [String]
    
    /// Query agrument for API if any
    
   private let queryParamters: [URLQueryItem]
    // Contructed url for the api reuquest in string format
    private var urlString: String {
        var string = Conttants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            string += "/"
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        if !queryParamters.isEmpty {
            string += "?"
           
            let argumentString = queryParamters.compactMap({
                guard let value = $0.value else { return nil}
                return "\($0.name)=\(value)"
            }).joined(separator:" &")
            
            string += argumentString
            
        }
        
        return string
    }
    /// Computrerd & conructed API  url
    public var url: URL? {
        return URL (string: urlString)
    }
    /// Desired htttp method
    public let htttpMethod = "GET"
    // Mark: Public
    
    /// Constucted request
    /// - Parameters
    ///     - endpoints: Target endpoints
    ///       - pathComponts: Collection of Path compnents
    ///         -queryParmeters: Collection of query parameters
    
     public init(endpoint: RMEndpoint,
pathComponets: [String] = [],
          queryParamters: [URLQueryItem] = []
     ) {
        self.endpoint = endpoint
         self.pathComponents = pathComponets
         self.queryParamters = queryParamters
    }
}
