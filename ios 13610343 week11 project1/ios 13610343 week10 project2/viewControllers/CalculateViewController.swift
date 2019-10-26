//
//  ViewController.swift
//  ios 13610343 week10 project2
//
//  Created by Nighthwtnk on 10/19/19.
//  Copyright © 2019 Nighthwtnk. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    //Global Variable  คือ ตัวแปรตรงกลางที่ใช้ร่วมกันใน class ฟังก์ชันอื่นสามารถเรียกใช้ๆได้
    //var bmiVAlueCal = "0"
    //var calBrain = CalculateBrain()
    var calculatorBrain = CalculateBrain()

    //เรียกใช้ struct #1 ประกาศตตัวแปรชนิด struct
    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var heightLable: UILabel!
    
    @IBOutlet weak var bmiDisplay: UILabel!
    
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
       // Do any additional setup after loading the view.
    }
    @IBAction func heightSliderPressed(_ sender: UISlider) {
        print(sender.value)
//        print(String(format: "%.2f",sender.value))
//        print(String(format: "%.0f",sender.value))
        let height = String(format: "%.2f",sender.value)
        heightLable.text = "\(height) M."
    }//end heightSliderPressed
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(sender.value)
//        print(String(format: "%.2f",sender.value))
//        print(String(format: "%.0f",sender.value))
        let weight = String(format: "%.0f",sender.value)
        weightLable.text = "\(weight) Kg."
    }//end weightSliderChanged
    
    @IBAction func calculatePressed(_ sender: Any) {
        let heightFromUser = sliderHeight.value
        let weightFromUser = sliderWeight.value
        //Local Variable
//        let bmi =  weight / (height * height)
//        print(bmi)
//        bmiDisplay.text = "\(bmi)"
        
        //bmiVAlueCal = String(format:"%.1f", weight / (height * height))
        //เรียกใช้ struct #2 เรียกฟฟังก์ชันของ struct โดยการส่งค่าที่ต้องการออกไป
        calculatorBrain.calculateBMI(height: heightFromUser, weight: weightFromUser)

        
        //self.performSegue(withIdentifier: "goToResult", sender: self)
        performSegue(withIdentifier: "goToResult", sender: self)

    }
    @IBAction func heartPressed(_ sender: Any) {
        //self.performSegue(withIdentifier: "goToCredit", sender: self)
        performSegue(withIdentifier: "goToCredit", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            //destinationVC.bmiValue = bmiVAlueCal
            
            //เรียกใช้ struct #3 เรียกใช้  func getBMIValue()
            //ส่งกัลบมาเป็น string  ซึ่งเป็นชนิดเดี่ยวกับ .bmiValue ต้องการ
            //รู้ว่าตัวเดี่ยวกัน ด้วยชื่อ calculateBrain
            destinationVC.bmiValue = calculatorBrain.getbmiValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
            //ชื่อ object.ชื่อตัวแปร  set  ให้
            
        }
        if segue.identifier == "goToCredit"{
            let CreditVC = segue.destination as! CreditViewController
            CreditVC.fullname = "Apichat Hongwatthanakul"
        }
        
    }//end func prepare
    
}//end class

