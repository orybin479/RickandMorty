//
//  RMEndpoint.swift
//  RIckAndMorty
//
//  Created by Oleg Rybin on 3/29/23.
//

import Foundation

/// Represnts unique API endponints
@frozen enum RMEndpoint: String  {
    /// Enpoitn to get charcter info
    case character
    /// Enpoitn to get loction  info
    case location
    /// Enpoitn to get epsode info
    case episode
}
