//
//  CreditViewController.swift
//  ios 13610343 week10 project2
//
//  Created by Nighthwtnk on 10/19/19.
//  Copyright © 2019 Nighthwtnk. All rights reserved.
//

import UIKit

class CreditViewController: UIViewController {
    
    var fullname = "fullname"

    @IBOutlet weak var fullnameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullnameLabel.text = fullname

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
