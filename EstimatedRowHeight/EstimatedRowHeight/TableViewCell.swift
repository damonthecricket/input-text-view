//
//  TableViewCell.swift
//  EstimatedRowHeight
//
//  Created by Damon Cricket on 02.09.2019.
//  Copyright © 2019 DC. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel?
    
    func adjust(withText text: String) {
        label?.text = text
    }
}
