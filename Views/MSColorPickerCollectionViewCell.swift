//
//  MSColorPickerCollectionViewCell.swift
//  DrawMe
//
//  Created by Muhammad Abdul Subhan on 30/10/2017.
//  Copyright © 2017 Muhammad Abdul Subhan. All rights reserved.
//

import UIKit

class MSColorPickerCollectionViewCell: UICollectionViewCell {
    
    var color:UIColor! = UIColor.orange
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = self.frame.size.width/2
        self.layer.masksToBounds = true
        
        self.backgroundColor = color
    }
}
