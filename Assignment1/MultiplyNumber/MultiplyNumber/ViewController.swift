//
//  ViewController.swift
//  MultiplyNumber
//
//  Created by X D on 9/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFirstNumber: UITextField!
    @IBOutlet weak var txtSecondNumber: UITextField!
    @IBOutlet weak var lbResults: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func multiply(_ sender: Any) {
        var firstNumber = Int(txtFirstNumber.text ?? "0") ?? 0
        var secondNumber = Int(txtSecondNumber.text ?? "0") ?? 0
        
        var product = firstNumber * secondNumber
        
        lbResults.text = String(product)
        
    }

}

