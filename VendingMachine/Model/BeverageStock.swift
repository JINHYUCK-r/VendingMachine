//
//  BeverageStock.swift
//  VendingMachine
//
//  Created by 류진혁 on 2020/07/30.
//  Copyright © 2020 Jin-Hyuck. All rights reserved.
//

import Foundation

struct BeverageStock {
    
    var initialMoney : Int = 10000
    
    var beverages : Array = [
     Beverage(BeverageName: "Cola", Price: 1000, Count: 20),
     Beverage(BeverageName: "Fanta", Price: 1000, Count: 20),
     Beverage(BeverageName: "Cider", Price: 1200, Count: 20),
     Beverage(BeverageName: "Ambasa", Price: 1200, Count: 20),
     Beverage(BeverageName: "SikHye", Price: 1400, Count: 20),
     Beverage(BeverageName: "PowerPoint",Price: 3000, Count: 20),
     Beverage(BeverageName: "Excel",Price: 9000, Count: 20),
     Beverage(BeverageName: "Random", Price: 2000, Count: 0)
    ]
    
    func getBeverageID(beverageName : String) -> Int{
        var beverageID : Int = 0
        for i in 0...beverages.count-1{
            if beverageName == beverages[i].beverageName{
                beverageID = i
                break;
            }
        }
        return beverageID
    }
    mutating func stockMinus(bevergeId: Int){
        beverages[bevergeId].count -= 1
    }
    
    func stockCheck(beverageId : Int){
        print("자판기에 \(beverages[beverageId].beverageName)은(는)\(beverages[beverageId].count)개 남았습니다.")
    }
    mutating func moneyMinus(Amount : Int){
        initialMoney -= Amount
    }
    mutating func moneyPlus(Amount : Int){
        initialMoney += Amount
    }
    
    
}



