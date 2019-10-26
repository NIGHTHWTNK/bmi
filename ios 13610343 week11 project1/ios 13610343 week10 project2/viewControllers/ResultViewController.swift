//
//  ResultViewController.swift
//  ios 13610343 week10 project2
//
//  Created by Nighthwtnk on 10/19/19.
//  Copyright © 2019 Nighthwtnk. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    //properties
    //var bmiValue = "0.0"
    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }//end func recalculatePressed
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}//end class
