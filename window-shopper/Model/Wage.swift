//
//  Wage.swift
//  window-shopper
//
//  Created by Unmilan on 23/08/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import Foundation

class Wage {
    //Here the forWage is parameter name and wage is a variable that will store the data. Same for andPrice and price. forWage is basically for autocomplete. So forWage and andPrice will be parameter names that we pass data to and that data is then stored in the variables wage and price to be used within the getHours function itself.
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        
        return Int(ceil(price/wage))//ceil rounds up the number to the next whole number. Eg: 16.2 to 17. Int here implicitly converts result to integer.
        
    }
}
