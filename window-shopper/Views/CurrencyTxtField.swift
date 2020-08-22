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
        
        if let p = placeholder {
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            
            attributedPlaceholder = place
            
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            
        }

    }

}
