//
//  BikeCollectionCell.swift
//  JSON
//
//  Created by Matt Deuschle on 9/25/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import UIKit

class BikeCollectionCell: UICollectionViewCell {

    @IBOutlet weak var valueLabel: UILabel!

    func config(value: String) {
        valueLabel.text = value
    }
    

}
