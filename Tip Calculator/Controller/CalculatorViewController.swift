//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Aidyn Assan on 03.02.2022.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var billTotalEntered: UITextField!
    @IBOutlet weak var zeroTipOutlet: UIButton!
    @IBOutlet weak var tenTipOutlet: UIButton!
    @IBOutlet weak var twentyTipOutlet: UIButton!
    @IBOutlet weak var splitNumberOutlet: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearButtons()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipPressed(_ sender: UIButton) {
        clearButtons()
        calculatorBrain.setTip(sender: sender)
    }
    @IBAction func splitStepper(_ sender: UIStepper) {
        splitNumberOutlet.text = String(format: "%.0f", sender.value)
        calculatorBrain.splitNumber = sender.value
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        clearButtons()
        calculatorBrain.billTotal = billTotalEntered.text ?? "0.0"
        calculatorBrain.calculate()
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.totalPerPerson = calculatorBrain.getBillPerPerson()
            destinationVC.splitText = calculatorBrain.getText()
        }
    }
    
    func clearButtons(){
        zeroTipOutlet.backgroundColor = .clear
        tenTipOutlet.backgroundColor = .clear
        twentyTipOutlet.backgroundColor = .clear
    }
    
}

