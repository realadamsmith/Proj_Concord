//
//  MenuViewController.swift
//  hamburger
//
//  Created by Adam Cray Smith on 8/28/20.
//  Copyright © 2020 Scitest. All rights reserved.
//

import UIKit

enum MenuType: Int {
    case home
    case camera
    case profile
    case merchant
    //maybe make case merchant signup process
    
}

class MenuViewController: UITableViewController {

    var didTapMenuType: ((MenuType) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //this is the dismissal of the menu to get a new view
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else {return}
        dismiss(animated: true) { [weak self] in
            print("Dismissing: \(menuType)")
            self?.didTapMenuType?(menuType)
            
        }
    }
    @IBAction func YourAccount(_ sender: UIButton) {
    }
    
}
