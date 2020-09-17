//
//  ProfileViewController.swift
//  upstate_tow
//
//  Created by Jose Alarcon Chacon on 9/15/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    
    let transition = TransitionToLeft()
    var topView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.round_image()
    }
   
    @IBAction func sideMenu(_ sender: UIBarButtonItem) {
        guard let menuVC = storyboard?.instantiateViewController(identifier: "menuVC") as? SideMenuViewController else { return }
        menuVC.didTypeMenu = { menu in
            self.transitionToSelectedView(menu)
            print(menu)
        }
        menuVC.modalPresentationStyle = .overCurrentContext
        menuVC.transitioningDelegate = self
        present(menuVC, animated: true, completion: nil)
    }
    // transition to a select content
    func transitionToSelectedView(_ menu: SideMenu) {
        let title = String(describing: menu).capitalized
        self.title = title
        self.topView?.removeFromSuperview()
        switch menu {
        case .town:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let town_vc = storyboard.instantiateViewController(identifier: "Town")
            show(town_vc, sender: self)
        case .edit_profile:
            let view = UIView()
            view.backgroundColor = .yellow
            view.frame = self.view.bounds
            self.view.addSubview(view)
        case .setting:
            let view = UIView()
            view.backgroundColor = .yellow
            view.frame = self.view.bounds
            self.view.addSubview(view)
            self.topView = view
        default:
            break
        }
    }
}

// transition delegate method
extension ProfileViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.present = true
        return transition 
    }
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.present = false
        return transition
    }
}
