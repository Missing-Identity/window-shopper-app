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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 80)) //Here in the width we are taking the width of the entire screen so we can fit the button perfectly on top of the keyboard.
        
        calcBtn.backgroundColor = #colorLiteral(red: 0.9762769264, green: 0.3573735919, blue: 0.1907942406, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)//This sets the title for the button. Always remeber to use setTitle for this function.
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)//Here the for: .normal means default view. We have other states such as highlighted or press state to represent different states of a button.
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)//Target should be self. The #selector is for selecting which function to call. The addTarget adds a target to the button so that it knows what function is to be called when the button is pressed.
        
        wageTxt.inputAccessoryView = calcBtn //This sets the calcBtn as the accessory view for the 2 text fields.
        priceTxt.inputAccessoryView = calcBtn
    }
    
    @objc func calculate() { //@objc means its using an Objective-C feature.
        
        print("We got here!")
    }


}

