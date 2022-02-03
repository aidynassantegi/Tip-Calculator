//
//  CalculatorBrain.swift
//  Tip Calculator
//
//  Created by Aidyn Assan on 03.02.2022.
//

import UIKit

struct CalculatorBrain{
    var tip: Double?
    var splitNumber: Double?
    var billTotal: String?
    var perPerson: Double?
    
    mutating func setTip(sender: UIButton){
        sender.backgroundColor = .systemGreen
        if sender.tag == 20{
            tip = 1.2
        }else if sender.tag == 10 {
            tip = 1.1
        }else{
            tip = 1.0
        }
    }
    
    mutating func calculate(){
        if let bill = billTotal {
            if let tip4Calc = tip{
                if let split4Calc = splitNumber{
                    perPerson = (Double(bill) ?? 0.0) * tip4Calc / split4Calc
                }
            }
        }
    }
    func getBillPerPerson() -> String{
        return String(format: "%.1f", perPerson ?? 0.0)
    }
    func getText() -> String{
        return "Split between \(splitNumber ?? 0.0) people, with \(Int((tip!-1)*100))% tip."
    }
    
}
