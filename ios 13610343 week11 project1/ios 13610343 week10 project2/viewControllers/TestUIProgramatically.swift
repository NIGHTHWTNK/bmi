//
//  TestUIProgramatically.swift
//  ios 13610343 week10 project2
//
//  Created by Nighthwtnk on 10/19/19.
//  Copyright © 2019 Nighthwtnk. All rights reserved.
//

import UIKit
class TestUIProgramatically: UIViewController{
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        let label = UILabel()
        //label.text = "bmiValue"
        label.text = bmiValue
        label.frame = CGRect(x: 200, y: 200, width: 100, height: 50)
        view.addSubview(label)
    }
}
