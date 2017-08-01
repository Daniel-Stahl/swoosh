//
//  BorderButton.swift
//  swoosh
//
//  Created by Daniel Stahl on 7/31/17.
//  Copyright © 2017 Daniel Stahl. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
