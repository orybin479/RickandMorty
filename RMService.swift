//
//  RMService.swift
//  RIckAndMorty
//
//  Created by Oleg Rybin on 3/29/23.
//

import Foundation
/// Primary API service object to ger Ricky and Morty data
final class RMService {
    /// Shared singelton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init () {}
    
    /// Send Rick and Morty API Call
    ///  - Parameters:
    ///     - requests: Request instance
    ///          - type: the type of obkect we expect to get back 
    ///     - completion: Callback with date or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<String, Error>) -> Void
    ) {
    }
}
