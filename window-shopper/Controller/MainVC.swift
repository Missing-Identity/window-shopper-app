//
//  MainVC.swift
//  window-shopper
//
//  Created by Unmilan on 22/08/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    
    
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 80)) //Here in the width we are taking the width of the entire screen so we can fit the button perfectly on top of the keyboard.
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.9762769264, green: 0.3573735919, blue: 0.1907942406, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)//This sets the title for the button. Always remeber to use setTitle for this function.
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)//Here the for: .normal means default view. We have other states such as highlighted or press state to represent different states of a button.
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)//Target should be self. The #selector is for selecting which function to call. The addTarget adds a target to the button so that it knows what function is to be called when the button is pressed.
        
        wageTxt.inputAccessoryView = calcBtn //This sets the calcBtn as the accessory view for the 2 text fields.
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true//Starting out with the labels hidden in viewDidLoad.
        hoursLbl.isHidden = true
    }
    
    @objc func calculate() { //@objc means its using an Objective-C feature.
        
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {//Here we can use wageTxt and priceTxt as variable names as we are redefining it with let. It is applicable only for this function so not to worry.
            
            //The if statement also checks if the text fields are actually filled with data. So the calculate() func will not work if there is no data in the text fields.
            if let wage = Double(wageTxt), let price = Double(priceTxt) {//Here we are casting the data entered in the text fields into a number. If there are letters instead of numbers then this function won't work.
                
                view.endEditing(true) //This hides the keyboard.
                resultLbl.isHidden = false//These 2 unhide the labels that were hidden by default.
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))" //Resetting the default label values with the calculation result from the Wage.swift class in Model group.
                
                
            }
            
            
        }
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        
        resultLbl.isHidden = true//We are hiding the labels with the .isHidden function.
        hoursLbl.isHidden = true
        wageTxt.text = ""//Making the text empty.
        priceTxt.text = ""
        
    }
    
}

