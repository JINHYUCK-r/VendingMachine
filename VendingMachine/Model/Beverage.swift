//
//  Beverage.swift
//  VendingMachine
//
//  Created by 류진혁 on 2020/07/30.
//  Copyright © 2020 Jin-Hyuck. All rights reserved.
//

import Foundation

struct Beverage {
    var beverageName: String
    var price: Int
    var count: Int
    
    init(BeverageName: String, Price: Int, Count: Int){
        self.beverageName = BeverageName
        self.price = Price
        self.count = Count
    }
}
