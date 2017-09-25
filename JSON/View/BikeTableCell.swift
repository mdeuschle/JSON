//
//  BikeTableCell.swift
//  JSON
//
//  Created by Matt Deuschle on 9/25/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import UIKit

class BikeTableCell: UITableViewCell {

    @IBOutlet weak var categoryLabel: UILabel!

    func config(category: String) {
        categoryLabel.text = category
    }
}
