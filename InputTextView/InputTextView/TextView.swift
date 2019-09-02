//
//  TextView.swift
//  InputTextView
//
//  Created by Damon Cricket on 02.09.2019.
//  Copyright © 2019 DC. All rights reserved.
//

import UIKit

class TextView: UITextView {

    @IBOutlet weak var heightConstraint: NSLayoutConstraint?
    @IBOutlet weak var maxHeightConstraint: NSLayoutConstraint?
    @IBOutlet weak var minHeightConstraint: NSLayoutConstraint?

    override func layoutSubviews() {
        super.layoutSubviews()
        
        let sizeThFit = self.sizeThatFits(frame.size)
        var newHeight = sizeThFit.height
        
        if maxHeightConstraint != nil {
            newHeight = min(newHeight, maxHeightConstraint!.constant)
        }
        
        if minHeightConstraint != nil {
            newHeight = max(newHeight, minHeightConstraint!.constant)
        }
        
        heightConstraint?.constant = newHeight
    }
}
