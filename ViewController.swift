//
//  ViewController.swift
//  lol
//
//  Created by Alen  on 15/05/16.
//  Copyright © 2016 Alen . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  
    @IBOutlet var textFieldName: UITextField!
    
    var currentNumber = Float()
    var result = Float()
    var operation = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup afte1r loading the view, typically from a nib.
        
        operation = "="
        textFieldName.text = "\(result)"
        
        view.backgroundColor = UIColor.black
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
     
    }

   
    
    
    @IBAction func enterNumber(_ sender: UIButton) {
    

        
        currentNumber = currentNumber * 10 + Float(Int(sender.titleLabel!.text!)!)
        textFieldName.text = "\(currentNumber)"
        
    }
    
    
    @IBAction func enterOperation(_ sender: UIButton) {
    

    
        switch operation {
        case "=":
            result = currentNumber
        case "+":
            result += currentNumber
        case "-":
            result -= currentNumber
        case "x":
            result *= currentNumber
        case "/":
            result /= currentNumber
        default:
            print("Error!")
        }
        
        textFieldName.text = "\(operation)"
    
        currentNumber = 0
        
        textFieldName.text = "\(result)"
        
        operation = sender.titleLabel!.text! as String!
        
        if(sender.titleLabel!.text! == "=") {
            
            result = 0
        }
        
        
    }
    
  
    @IBAction func clearInput(_ sender: UIButton) {
    
        
        currentNumber = 0
        result = 0
        operation = "="
        textFieldName.text = "\(result)"
        
        
    }

    
}

