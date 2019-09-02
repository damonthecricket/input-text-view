//
//  ViewController.swift
//  InputTextView
//
//  Created by Damon Cricket on 02.09.2019.
//  Copyright © 2019 DC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView?

    override func viewDidLoad() {
        super.viewDidLoad()

        textView?.layer.borderColor = UIColor.lightGray.cgColor
        textView?.layer.borderWidth = 1.0
        textView?.layer.cornerRadius = 15.0
        textView?.layer.masksToBounds = true
        textView?.textContainerInset = UIEdgeInsets(top: 0.0, left: 10.0, bottom: 0.0, right: 10.0)
        textView?.scrollsToTop = false
    }
}

