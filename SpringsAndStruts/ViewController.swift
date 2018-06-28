//
//  ViewController.swift
//  SpringsAndStruts
//
//  Created by Thomas Dimnet on 28/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yelloView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var redView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let orientation = UIDevice.current.orientation
        if orientation == .landscapeLeft || orientation == .landscapeRight {
            yelloView.frame = CGRect(x: 20, y: 20, width: 307, height: 161.5)
            greenView.frame = CGRect(x: 340, y: 20, width: 307, height: 161.5)
            blueView.frame = CGRect(x: 20, y: 193, width: 307, height: 161.5)
            redView.frame = CGRect(x: 340, y: 193, width: 307, height: 161.5)
        } else {
            yelloView.frame = CGRect(x: 25, y: 44, width: 160, height: 300)
            greenView.frame = CGRect(x: 191, y: 44, width: 160, height: 300)
            blueView.frame = CGRect(x: 25, y: 348, width: 160, height: 300)
            redView.frame = CGRect(x: 191, y: 348, width: 160, height: 300)
        }
    }
}

