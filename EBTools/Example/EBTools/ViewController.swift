//
//  ViewController.swift
//  EBTools
//
//  Created by be-tech-capital on 09/21/2020.
//  Copyright (c) 2020 be-tech-capital. All rights reserved.
//

import UIKit
import EBTools

@available(iOS 10.0, *)
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EBToolsUI.feedback(style: .light)
        let color = EBToolsUI.rgbToColor(r: 0, g: 0, b:0)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

