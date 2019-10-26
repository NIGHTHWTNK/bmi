//
//  CalculateBrain.swift
//  ios 13610343 week10 project2
//
//  Created by Nighthwtnk on 10/19/19.
//  Copyright © 2019 Nighthwtnk. All rights reserved.
//


import UIKit
//kit แปลว่า ชุดเครื่องมือ
//UI  แปลว่า User Interface  ส่วนที่เกี่ยวกับการเชื่อต่อกับผู้ใช้ เช่น ปุ่มกด เป็นต้น

//struct จะเป็นแบบ Pass by Value คือ เหมือนก็อปปี้แยกกันคนละอัน แก้กับอันใดอันหนึ่งไม่มีผลกับอีกอัน
//class  จะเป็นแบบ Pass by Refernce เหมือนก็อปปี้แยกกันคนละอัน แต่แก้กับอันใดอันหนึ่งมีผลกับอีกอัน
struct CalculateBrain {
    //var bmi:Float = 0.0 //1 value เก็บค่าแค่ตัวเดี่ยว
    //ไม่ใช้แล้วน่ะ เพราะใช้ bmiStruct แทน 
    var bmiStruct : BMI?//3 value เก็บค่าสามตัว เป็นชุด (value, advice, color)
    //เครื่องหมายคำถาม ? คือ เป็นตัวแปนชนิด Optional  คือ ตัวเลือกจะมีค่าหรือไม่มีค่าก็ได้
    //ดังนั้น มันอาจจะไม่มีค่าก็ได้
    func getbmiValue() -> String{
        //let bmiTo1DecimalPleace = String(format: "%.1f", bmi)
        let bmiTo1DecimalPleace = String(format: "%.1f", bmiStruct?.value ?? 0.0)//ถ้ามีค่า ก็ใช้ค่านั้น ถ้าไม่มีก็จะเป็น 0.0
        return bmiTo1DecimalPleace
    }//end func getbmiValue
    
    func getAdvice() -> String {
        return bmiStruct?.advice ?? "No Advice"
        
        //if  แบบย่อ
        //ตัวแปรที่ต้องการดูค่าว่ามีค่าหรือไม่ ?? ถ้าไม่มีค่าให้ใช้ค่าตรงนี้แทน
        //bmiStruct?.advice ?? "No Advice"
        //ตัวแปรที่ต้องการดูค่าว่ามีค่าหรือไม่ = bmiStruct?.advice
        //ถ้าไม่มีค่าให้ใช้ ค่าตรงนี้แทน = "No Advice"
        

    }//end func getAdvic
    
    func getColor() -> UIColor {
        return bmiStruct?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height:Float, weight:Float){
        //bmi  ตัวที่ใช้นี้ ไม่มี var หรือ let  นำหหน้า คือ ตัวที่เป็น Global var
        //ส่วน  weight กับ height  คือ ตัวที่ ฟังก์ชันรับค่ามาในชื่อนั้นๆ เป็น Local var
        //bmi = weight / (height * height)
        let bmiValueLocal = weight / (height * height)
        
        if bmiValueLocal < 18.5{
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        }else if bmiValueLocal < 24.9{
            bmiStruct = BMI(value: bmiValueLocal, advice:  "Fit as afiddle", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }else{
            bmiStruct = BMI(value: bmiValueLocal, advice:  "Eat less pies!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }//end else
        
    }//end mutating func calculateBMI
}//end struct CalculateBrain


