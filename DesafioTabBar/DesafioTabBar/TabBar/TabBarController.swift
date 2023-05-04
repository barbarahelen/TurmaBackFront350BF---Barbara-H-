//
//  TabBarController.swift
//  DesafioTabBar
//
//  Created by Barbara Silva on 2023-05-02.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configItems()
        configTabBar()
        // Do any additional setup after loading the view.
    }
    
    func configItems () {
        guard let items = tabBar.items else { return }
        items[0].title = "Tela 01"
        items[0].image = UIImage(systemName: "person")
        items[1].title = "Tela 02"
        items[1].image = UIImage(systemName: "phone")
        items[2].title = "Tela 03"
        items[2].image = UIImage(systemName: "trash")
        
    }


    func configTabBar() {
        tabBar.layer.borderWidth = 0.2
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }

}
