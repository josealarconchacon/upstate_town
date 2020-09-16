//
//  Imagelayout.swift
//  upstate_tow
//
//  Created by Jose Alarcon Chacon on 9/15/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit


extension UIImageView {
     func image_layout() {
        layer.cornerRadius = 15.0
    }
    
    func profile_image() {
        self.layer.cornerRadius = (self.frame.width / 2) //instead of let radius = CGRectGetWidth(self.frame) / 2
        self.layer.masksToBounds = true
    }
}
