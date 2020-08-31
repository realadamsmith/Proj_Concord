//
//  ViewController.swift
//  hamburger
//
//  Created by Adam Cray Smith on 8/28/20.
//  Copyright © 2020 Scitest. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let transition = SlideInTransition()
    var topView: UIView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapMenu(_ sender: UIBarButtonItem) {
        guard let menuViewController = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as?
            MenuViewController else { return }
        
        // 8/29/20
        menuViewController.didTapMenuType = { menuType in
            self.transitionToNew(menuType)
        }
        menuViewController.modalPresentationStyle = .overCurrentContext
        menuViewController.transitioningDelegate = self
        present(menuViewController, animated: true)
    }
        func transitionToNew(_ menuType: MenuType) {
        //    let title = String(describing: menuType).capitalized
          //  self.title = title
            
            topView?.removeFromSuperview()
            switch menuType {
           
            //Possibly where you would link to other sections of the app
            case .profile:
                let view = UIView()
                view.backgroundColor = .yellow
                view.frame = self.view.bounds
                self.view.addSubview(view)
                self.topView = view
            
            
            case .camera:
                let view = UIView()
                view.backgroundColor = .blue
                view.frame = self.view.bounds
                self.view.addSubview(view)
                self.topView = view
            default:
                break
                
                
            }
    }
}

extension HomeViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = true
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = false
        return transition
    }
}
