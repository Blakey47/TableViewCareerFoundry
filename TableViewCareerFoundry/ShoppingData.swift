//
//  DataItem.swift
//  TableViewCareerFoundry
//
//  Created by Darragh on 9/20/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import Foundation


struct ShoppingList {
    
    
    static var foodItems: [Shopping] = [
        Shopping(items: "Bread", price: "£\(arc4random_uniform(3))"),
        Shopping(items: "Peanuts", price: "£\(arc4random_uniform(3))"),
        Shopping(items: "Pasta", price: "£\(arc4random_uniform(3))"),
        Shopping(items: "Biscuits", price: "£\(arc4random_uniform(3))"),
        Shopping(items: "Chicken", price: "£\(arc4random_uniform(3))"),
        Shopping(items: "Potatoes", price: "£\(arc4random_uniform(3))"),
        Shopping(items: "Cheese", price: "£\(arc4random_uniform(3))")
    ]
    
    static var drinkItems: [Shopping] = [
        Shopping(items: "Water", price: "£\(arc4random_uniform(3))"),
        Shopping(items: "Milk", price: "£\(arc4random_uniform(3))"),
        Shopping(items: "Soda", price: "£\(arc4random_uniform(3))"),
        Shopping(items: "Juice", price: "£\(arc4random_uniform(3))")
    ]
}
