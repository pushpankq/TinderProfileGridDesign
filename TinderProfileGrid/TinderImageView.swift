//
//  TinderImageView.swift
//  TinderProfileGrid
//
//  Created by Puspank Kumar on 14/02/19.
//  Copyright © 2019 Puspank Kumar. All rights reserved.
//

import UIKit

class TinderImageView: UIImageView {
    
    @IBInspectable
    var imageIndex : NSNumber! {
        
        didSet {
            
            print("imageIndex")
            
        }
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
