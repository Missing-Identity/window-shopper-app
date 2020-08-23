//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Unmilan on 22/08/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {//Never call super on draw function.
        let size: CGFloat = 20//We need to keep CGFloat as otherwise it will default to double which we shouldn't.
        let currencyLbl = UILabel(frame: CGRect(x: 10, y: (frame.size.height / 2) - size / 2, width: size, height: size))//We should always use frames if we are loading up UI programatically.
        currencyLbl.backgroundColor = #colorLiteral(red: 0.6028897271, green: 0.648812123, blue: 0.7130683091, alpha: 0.81)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 10.0
        currencyLbl.clipsToBounds = true //This clips this function to the bounds or else the rounded corners won't work.
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency//Sets type of format
        formatter.locale = .current//Sets location
        currencyLbl.text = formatter.currencySymbol//Sets your location currency symbol to the text for currencyLbl
        addSubview(currencyLbl)//Adds the symbol to the set frames as you can see in line 17.
    }//Add this only if you want to add custom subviews.
    
    override func prepareForInterfaceBuilder() {
        
        customisedView()
        
    }

    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        customisedView()
        
    }
    
    func customisedView() {
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 10.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            
            attributedPlaceholder = place
            
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        }

    }

}
