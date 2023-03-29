//
//  ViewController.swift
//  RIckAndMorty
//
//  Created by Oleg Rybin on 3/7/23.
//

import UIKit

/// Controler to house tabs and root tab conllers 
final class RAMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }


    private func setupTabs(){
        let chartersVC = RMCharactersViewController()
        let locationsVC = RMLocations_ViewController()
        let epsiodesVC = RMEpsiodesViewController()
        let settingsVC = RMSettingsViewController()
        
        // Top of the phone
       
        chartersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        epsiodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        
        
        
        let nav1 = UINavigationController(rootViewController: chartersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: epsiodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Charter", image: UIImage(systemName: "person" ), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Location", image: UIImage(systemName: "globe" ), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Epsiodes", image: UIImage(systemName: "tv" ), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear" ), tag: 4)
        
        
        for nav in [nav1, nav2, nav3, nav4]{
            nav.navigationBar.prefersLargeTitles = true
        }
                
                
                
        setViewControllers(
            [nav1, nav2, nav3, nav4],
             animated: true)
    }

}

