//
//  ViewController.swift
//  calcModulo
//
//  Created by Yaakov Haimoff on 26/03/2022.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var numberTxt: UITextField!
    @IBOutlet weak var moduloField: UITextField!
    @IBOutlet weak var outcomeLbl: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // hides Keyboard By Tapping Outside
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboardByTappingOutside))
        
        self.view.addGestureRecognizer(tap)
        
        outcomeLbl.text = ""
    }
    
    @IBAction func calculateModulo(_ sender: Any)
    {
        var num = Int(numberTxt.text!)!
        let mod = Int(moduloField.text!)!
        if num < 0
        {
            while num < 0
            {
                num += mod
            }
        }
        let outComeNum = num % mod
        outcomeLbl.text = "\(outComeNum)"
    }
    
    
    @objc func hideKeyboardByTappingOutside() {
        self.view.endEditing(true)
    }
}
