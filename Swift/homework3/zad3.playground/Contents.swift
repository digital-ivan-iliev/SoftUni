//: Playground - noun: a place where people can play

import UIKit

/*
 Numeric Literals
 Integer Literals can be written in one of several representations:
 decimal, no prefix
 binary, prefixed with 0b
 octal, prefixed with 0o
 hexadecimal, prefixed with 0x
*/



let num1 = 0b1001       //  number in bin - 2
let num2 = 0o6071       //  number in oct - 8
let num3 = 1            //  number in dec - 10
let num4 = 0xff0d       //  number in dec - 16

                        //  let str = String(num1, radix: 2)
                        //  print(str)

//sum(forNumbers:[число1, число2, число3], inSystem: decimal) трябва да върне резултат - 68431

class Calculator {
    var dict:[String:Int] = ["bin":2,"oct":8,"dec":10,"hex":16]
    
    func sum (forNumbers: [Int], inSystem: String) -> String{
        var result : Int = 0
        for item in forNumbers {
            result += Int(String(item,radix: 10))!
        }
        return String(result,radix: self.dict[inSystem]!)
    }
    
    func multiplication (forNumbers: [Int], inSystem: String) -> String{
        var result : Int = 1
        for item in forNumbers {
            result *= Int(String(item,radix: 10))!
        }
        return String(result,radix: self.dict[inSystem]!)
    }

}
let calc = Calculator()
let data = [num1, num2, num3, num4]
calc.sum(forNumbers: data, inSystem: "dec")
calc.multiplication(forNumbers: data, inSystem: "dec")
