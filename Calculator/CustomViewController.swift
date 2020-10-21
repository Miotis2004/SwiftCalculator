//
//  CustomViewController.swift
//  Calculator
//
//  Created by Field Employee on 10/19/20.
//

import UIKit

class CustomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var isFirstInput = true
    var isDecimalUsed = false
    var isReady: Bool = true
    var firstInput: String = ""
    var secondInput: String = ""
    var currentInput: String = ""
    var lastOperand: String = ""
    var operand: String = ""
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    @IBAction func equalsButton(_ sender: UIButton) {
        if isFirstInput {
               return
        }
        performOperations(oper: operand)
        isReady = true
    }
    
    func performOperations(oper: String) {
        var solution: Double
        
        switch oper {
        case "+":
            solution = Double(firstInput)! + Double(secondInput)!
            displayLabel.text = String(solution)
            firstInput = String(solution)
            break;
        case "-":
            solution = Double(firstInput)! - Double(secondInput)!
            displayLabel.text = String(solution)
            firstInput = String(solution)
            break;
        case "x":
            solution = Double(firstInput)! * Double(secondInput)!
            displayLabel.text = String(solution)
            firstInput = String(solution)
            break;
        case "/":
            if secondInput == "0" {
                displayLabel.text = "ERR press C"
                break
            }
            solution = Double(firstInput)! / Double(secondInput)!
            displayLabel.text = String(solution)
            firstInput = String(solution)
            break;
            
        default:
            break
        }
    }
    
    @IBAction func divideButton(_ sender: UIButton) {
        isDecimalUsed = false
        isReady = true
        if isFirstInput == true {
            isFirstInput = false
            displayLabel.text = ""
            operand = "/"
        } else {
            //lastOperand = operand
            //operand = "/"
            //performOperations(oper: lastOperand)
        }
    }
    
    @IBAction func multiplyButton(_ sender: UIButton) {
        isDecimalUsed = false
        isReady = true
        if isFirstInput == true {
            isFirstInput = false
            displayLabel.text = ""
            operand = "x"
        } else {
            //lastOperand = operand
            //operand = "x"
            //performOperations(oper: lastOperand)
        }
    }
    
    @IBAction func subtractButton(_ sender: UIButton) {
        isDecimalUsed = false
        isReady = true
        if isFirstInput == true {
            isFirstInput = false
            displayLabel.text = ""
            operand = "-"
        } else {
            //lastOperand = operand
            //operand = "-"
            //performOperations(oper: lastOperand)
        }
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        isReady = true
        isDecimalUsed = false
        if isFirstInput == true {
            isFirstInput = false
            displayLabel.text = ""
            operand = "+"
        }else {
            //lastOperand = operand
            //operand = "+"
            //performOperations(oper: lastOperand)
        }
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        isReady = true
        firstInput = ""
        secondInput = ""
        displayLabel.text = ""
        isFirstInput = true
        isDecimalUsed = false
    }
    
    
    @IBAction func decimalButton(_ sender: UIButton) {
        if !isDecimalUsed {
            isDecimalUsed = true
            if isFirstInput == true {
                firstInput = firstInput + "."
                displayLabel.text = firstInput
            }else{
                secondInput = secondInput + "."
                displayLabel.text = secondInput
            }
        }
    }
    
    @IBAction func posNegButton(_ sender: UIButton) {
        if isFirstInput {
            if firstInput == "" {return}
            var holder: Double = Double(firstInput)!
            holder = holder * -1
            firstInput = String(holder)
            displayLabel.text = firstInput
        }else {
            if secondInput == "" {return}
            var holder: Double = Double(secondInput)!
            holder = holder * -1
            secondInput = String(holder)
            displayLabel.text = secondInput
        }
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
        if isReady {
            isReady = false
            displayLabel.text = ""
        }
        if isFirstInput == true {
            firstInput = firstInput + "1"
            displayLabel.text = firstInput
        }else{
            secondInput = secondInput + "1"
            displayLabel.text = secondInput
        }
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        if isReady {
            isReady = false
            displayLabel.text = ""
        }
        if isFirstInput == true {
            firstInput = firstInput + "2"
            displayLabel.text = firstInput
        }else{
            secondInput = secondInput + "2"
            displayLabel.text = secondInput
        }
    }
    
    
    @IBAction func threeButton(_ sender: UIButton) {
        if isReady {
            isReady = false
            displayLabel.text = ""
        }
        if isFirstInput == true {
            firstInput = firstInput + "3"
            displayLabel.text = firstInput
        }else{
            secondInput = secondInput + "3"
            displayLabel.text = secondInput
        }
    }
    
    
    @IBAction func fourButton(_ sender: UIButton) {
        if isReady {
            isReady = false
            displayLabel.text = ""
        }
        if isFirstInput == true {
            firstInput = firstInput + "4"
            displayLabel.text = firstInput
        }else{
            secondInput = secondInput + "4"
            displayLabel.text = secondInput
        }
    }
    
    @IBAction func fiveButton(_ sender: UIButton) {
        if isReady {
            isReady = false
            displayLabel.text = ""
        }
        if isFirstInput == true {
            firstInput = firstInput + "5"
            displayLabel.text = firstInput
        }else{
            secondInput = secondInput + "5"
            displayLabel.text = secondInput
        }
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
        if isReady {
            isReady = false
            displayLabel.text = ""
        }
        if isFirstInput == true {
            firstInput = firstInput + "6"
            displayLabel.text = firstInput
        }else{
            secondInput = secondInput + "6"
            displayLabel.text = secondInput
        }
    }
    
    @IBAction func sevenButton(_ sender: UIButton) {
        if isReady {
            isReady = false
            displayLabel.text = ""
        }
        if isFirstInput == true {
            firstInput = firstInput + "7"
            displayLabel.text = firstInput
        }else{
            secondInput = secondInput + "7"
            displayLabel.text = secondInput
        }
    }
    
    @IBAction func eightButton(_ sender: UIButton) {
        if isReady {
            isReady = false
            displayLabel.text = ""
        }
        if isFirstInput == true {
            firstInput = firstInput + "8"
            displayLabel.text = firstInput
        }else{
            secondInput = secondInput + "8"
            displayLabel.text = secondInput
        }
    }
    
    @IBAction func nineButton(_ sender: UIButton) {
        if isReady {
            isReady = false
            displayLabel.text = ""
        }
        if isFirstInput == true {
            firstInput = firstInput + "9"
            displayLabel.text = firstInput
        }else{
            secondInput = secondInput + "9"
            displayLabel.text = secondInput
        }
    }
    
    @IBAction func zeroButton(_ sender: UIButton) {
        if isReady {
            isReady = false
            displayLabel.text = ""
        }
        if isFirstInput == true {
            firstInput = firstInput + "0"
            displayLabel.text = firstInput
        }else{
            secondInput = secondInput + "0"
            displayLabel.text = secondInput
        }
    }
    
    
    
}
