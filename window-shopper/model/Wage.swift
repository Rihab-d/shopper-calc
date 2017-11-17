//
//  wage.swift
//  window-shopper
//
//  Created by rihab aldabbagh on 11/17/17.
//  Copyright © 2017 rihab aldabbagh. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forwage wage: Double, andPrice price: Double)->Int{
        return Int(ceil(price/wage))
    }
}
