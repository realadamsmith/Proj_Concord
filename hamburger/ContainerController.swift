//
//  ContainerController.swift
//  hamburger
//
//  Created by Adam Cray Smith on 9/1/20.
//  Copyright © 2020 Scitest. All rights reserved.
//

import UIKit
    
class ContainerController: UIViewController {
    
    //MARK: - Properties
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func configureHomeController() {
        let homeController = HomeViewController()
        let controller = UINavigationController(rootViewController: homeController)
        
        view.addSubview(controller.view)
        addChild(controller)
        controller.didMove(toParent: self)
    }
    

    func vonfigureMenuController() {
    
    }
    
}
