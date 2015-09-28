//
//  InterfaceController.swift
//  DGCalculator WatchKit Extension
//
//  Created by Dhvl on 28/09/15.
//  Copyright (c) 2015 Dhvl. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var answerlabel: WKInterfaceLabel!
    
    var firstString = ""
    var answerString = ""
    
    var add = false
    var substract = false
    var multiplication = false
    var divided = false
    
    var isAnswerShown = false
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func onClear() {
        answerlabel.setText("0")
        firstString = ""
        answerString = ""
    }
    
    @IBAction func onPressZero() {
        
        var firstCharacter = Array(firstString)[0]
        if firstCharacter == "0" && firstString.rangeOfString(".") == nil  {
            return
        }
        checkForString()
        firstString = firstString + "0"
        answerlabel.setText(firstString)
        
        
    }
    
    @IBAction func onPressOne() {
        checkForString()
        firstString = firstString + "1"
        answerlabel.setText(firstString)
    }
    
    @IBAction func onPressTwo() {
        checkForString()
        firstString = firstString + "2"
        answerlabel.setText(firstString)
    }
    @IBAction func onPressThree() {
        checkForString()
        firstString = firstString + "3"
        answerlabel.setText(firstString)
        
    }
    @IBAction func onPressFour() {
        checkForString()
        firstString = firstString + "4"
        answerlabel.setText(firstString)
        
    }
    @IBAction func onPressFive() {
        checkForString()
        firstString = firstString + "5"
        answerlabel.setText(firstString)
        
    }
    
    @IBAction func onPressSix() {
        checkForString()
        firstString = firstString + "6"
        answerlabel.setText(firstString)
        
    }
    
    @IBAction func onPressSeven() {
        checkForString()
        firstString = firstString + "7"
        answerlabel.setText(firstString)
        
    }
    @IBAction func onPressEight() {
        checkForString()
        firstString = firstString + "8"
        answerlabel.setText(firstString)
        
    }
    
    @IBAction func onPressNine() {
        checkForString()
        firstString = firstString + "9"
        answerlabel.setText(firstString)
        
    }
    
    @IBAction func onPressPoint() {
        checkForString()
        if firstString.rangeOfString(".") == nil {
            firstString = firstString + "."
            answerlabel.setText(firstString)
            
        }
    }
    
    func checkForString() {
        if isAnswerShown {
            firstString = ""
            isAnswerShown = false
        }
    }
    
    @IBAction func onEqualTo() {
        let firstNumber : Float = NSString(string: answerString).floatValue
        let secondNumber : Float = NSString(string: firstString).floatValue
        var answer : Float = 0.0
        
        if add {
            answer = firstNumber + secondNumber
            answerlabel.setText("\(answer)")
            
        }
        else if substract {
            answer = firstNumber - secondNumber
            answerlabel.setText("\(answer)")
        }
        else if multiplication {
            answer = firstNumber * secondNumber
            answerlabel.setText("\(answer)")
        }
        else if divided {
            answer = firstNumber / secondNumber
            answerlabel.setText("\(answer)")
        }
        firstString = "\(answer)"
        isAnswerShown = true
    }
    
    @IBAction func onAdd() {
        clearAllData()
        add = true
        answerString = firstString
        firstString = ""
    }
    
    @IBAction func onSubstrac() {
        clearAllData()
        substract = true
        answerString = firstString
        firstString = ""
    }
    
    @IBAction func onMulitplication() {
        clearAllData()
        multiplication = true
        answerString = firstString
        firstString = ""
    }
    
    @IBAction func onDevision() {
        clearAllData()
        divided = true
        answerString = firstString
        firstString = ""
    }
    
    func clearAllData() {
        isAnswerShown = false
        add = false
        substract = false
        multiplication = false
        divided = false
    }
}

