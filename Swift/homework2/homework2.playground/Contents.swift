//: Playground - noun: a place where people can play

//Homework 2 - by Ivan Iliev

//Task 1 - Cooking Recipes

import UIKit

// make enum for products:
enum Products : String {
    case sugar
    case apple
    case orange
    case tea
    case milk
    case water
}

// define 3 recipes with dictionary:
// var recipe1 = ["sugar":50, "apple":2, "milk":400]
var recipe1 : [String: Double] = ["sugar":40, "apple":2, "milk":400]
//var recipe2 = ["sugar":50, "orange":1, "water":300]
var recipe2 : [String: Double] = ["sugar":50, "orange":1, "water":300]
//var recipe3 = ["sugar":10, "tea":2, "water":200]
var recipe3 : [String: Double] = ["tea":2, "water":200]

// Create a function used for search of an item (product) in all recipes
func find_recipe_with_product ( product: String) {
    if recipe1[product] != nil  {
        print ("\nYou can find \(example) is this recipe:")
        for (product,value)
            in recipe1 {
                print("\(product):\(value)")
        }
    }
    
    if recipe2[product] != nil  {
        print ("\nYou can find \(example) is this recipe:")
        for (product,value)
            in recipe2 {
                print("\(product):\(value)")
        }
    }
    
    if recipe3[product] != nil  {
        print ("\nYou can find \(example) is this recipe:")
        for (product,value)
            in recipe3 {
                print("\(product):\(value)")
        }
    }
    
}

var example = String(Products.sugar)            // example := some product from enum and convert to string;
                                                // func find_recipe_with_product ( product: String)
//var example = String(Products.water)          // example := some product from enum and convert to string
                                                // func find_recipe_with_product ( product: String)
//var example = String(Products.apple)          // example := some product from enum and convert to string
                                                // func find_recipe_with_product ( product: String)
find_recipe_with_product(example)



// Task 2 - What I should buy ?
// Define what products we have at  home
//var fridge = ["sugar":40, "apple":2, "milk":400]
var fridge: [String: Double] = ["sugar": 20, "apple":2, "milk":400]
//var fridge: [String: Double] = ["apple":2, "milk":400]

// to have information about the product availability at your home (fridge)
print ("\nYou can find in your fridge:")
for (fridgeProduct, fridgeValue) in fridge {
    print("\(fridgeProduct): \(fridgeValue)")
    
}





//This function checks if you have product in all recipes and how much you need if you don't have enough

func check_product_in_recipes ( product: String) {
    if  recipe1.indexForKey(product) != nil {
        // the key exists in the dictionary
        if fridge.indexForKey(product) != nil{
            if ((fridge[product]! - recipe1[product]!) >= 0) {
                print("\nWe have enough \(product): \(fridge[product]) in the fridge for recepe1 wich need \(recipe1[product]) ")
            } else {
                print("\nWe don't have enough \(product): \(fridge[product]) in the fridge for recepe1 wich need \(recipe1[product]), We have to buy additional: \(recipe1[product]! - fridge[product]!) ")
            }
        }   else {
            print("\nWe don't have any \(product) in the fridge. We have to buy all needed value in the recipe1: \(recipe1[product])")
        }
        
    }
    
    if  recipe2.indexForKey(product) != nil {
        // the key exists in the dictionary
        if fridge.indexForKey(product) != nil{
            if ((fridge[product]! - recipe2[product]!) >= 0) {
                print("\nWe have enough \(product): \(fridge[product]) in the fridge for recepe2 wich need \(recipe2[product]) ")
            } else {
                print("\nWe don't have enough \(product): \(fridge[product]) in the fridge for recepe2 wich need \(recipe2[product]), We have to buy additional: \(recipe2[product]! - fridge[product]!) ")
            }
        }   else {
            print("\nWe don't have any \(product) in the fridge. We have to buy all needed value in the recipe2: \(recipe2[product])")
        }
        
    }
    
    if  recipe3.indexForKey(product) != nil {
        // the key exists in the dictionary
        if fridge.indexForKey(product) != nil{
            if ((fridge[product]! - recipe3[product]!) >= 0) {
                print("\nWe have enough \(product): \(fridge[product]) in the fridge for recepe3 wich need \(recipe3[product]) ")
            } else {
                print("\nWe don't have enough \(product): \(fridge[product]) in the fridge for recepe1 wich need \(recipe3[product]), We have to buy additional: \(recipe3[product]! - fridge[product]!) ")
            }
        }   else {
            print("\nWe don't have any \(product) in the fridge. We have to buy all needed value in the recipe3: \(recipe3[product])")
        }
        
    }
    

}


check_product_in_recipes(String(Products.sugar));
check_product_in_recipes(String(Products.apple));
check_product_in_recipes(String(Products.orange));
check_product_in_recipes(String(Products.tea));
check_product_in_recipes(String(Products.milk));
check_product_in_recipes(String(Products.water));


//If no,function to print information about what products must be bought and how many (how much)
