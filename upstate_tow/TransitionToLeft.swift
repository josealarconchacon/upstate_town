//
//  TransitionToLeft.swift
//  upstate_tow
//
//  Created by Jose Alarcon Chacon on 9/16/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit

class TransitionToLeft: NSObject, UIViewControllerAnimatedTransitioning {
    var present = false
    var addViewInTransition = UIView()
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.3
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let transitionToVC = transitionContext.viewController(forKey: .to),
            let fromVC = transitionContext.viewController(forKey: .from) else { return }
        // present and dismiss VC in transition
        let countainerV = transitionContext.containerView
        // set width and height to transitionToVC
        let width = transitionToVC.view.bounds.width * 0.8
        let height = transitionToVC.view.bounds.height
        if present {
            //addViewInTransition
            addViewInTransition.backgroundColor = .lightGray
            addViewInTransition.alpha = 0.0
            countainerV.addSubview(addViewInTransition)
            addViewInTransition.frame = countainerV.bounds
            // add side_menu tp container
            countainerV.addSubview(transitionToVC.view)
            // set the initial frame off the screen
            transitionToVC.view.frame = CGRect(x: -width, y: 0, width: width, height: height)
        }
        
        // animate VC coming from the left
        let transform = {
            self.addViewInTransition.alpha = 0.5
            transitionToVC.view.transform = CGAffineTransform(translationX: width, y: 0)
        }
        // dismiss animation
        let dismissIdentity = {
            self.addViewInTransition.alpha = 0.0
            fromVC.view.transform = .identity
        }
        let duration = transitionDuration(using: transitionContext)
        let cancel = transitionContext.transitionWasCancelled
        UIView.animate(withDuration: duration, animations: {
            self.present ? transform() : dismissIdentity()
        }) { (_) in
            transitionContext.completeTransition(!cancel)
        }
    }
}
