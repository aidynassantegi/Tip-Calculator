//
//  ResultViewController.swift
//  Tip Calculator
//
//  Created by Aidyn Assan on 03.02.2022.
//

import UIKit

class ResultViewController: UIViewController{
    var totalPerPerson: String?
    var splitText: String?
    
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    @IBOutlet weak var splitTextLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPerPersonLabel.text = totalPerPerson
        splitTextLabel.text = splitText
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
