//
//  RMCharacterViewController.swift
//  RIckAndMorty
//
//  Created by Oleg Rybin on 3/7/23.
//

import UIKit
/// Controller to show and search for Characters 
final class RMCharactersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            queryParamters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive"),
            ]
        )
        print(request.url)
        
        RMService.shared.execute(request ,expecting: RMCharacter.self) {result in
            
        }

       
    }
    

   

}
