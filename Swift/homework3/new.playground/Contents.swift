//: Playground - noun: a place where people can play

import UIKit

class Shape{
    var name: String = ""
    var p:Double = 0
    var a:Double = 0
    
    init(description_of_shape: String) {
       self.name = description_of_shape
    }
    
    
//    func perimeter_of_shape() -> Double {
//        return 0
 //   }
    
//    func area_of_shape() -> Double {
//        return 0
//    }
    
    
    
    func printAll() {
        print("The Name Of Shape Is",self.name)
        print("The Perimeter Of Shape Is", self.p)
        print("The Area Of Shape Is", self.a)
    }
    
    
}

class Triangle:Shape{
    let side1:Double
    let side2:Double
    let side3:Double
    let shape_name:String = "Triangle"
    
    init (side1_of_triangle:Double,side2_of_triangle:Double,side3_of_triangle:Double){
        self.side1=side1_of_triangle
        self.side2=side2_of_triangle
        self.side3=side3_of_triangle
        super.init(description_of_shape: shape_name)
        
    }
    
     func perimeter_of_shape() {
        var P: Double
        if (self.side1 + self.side2) > self.side3 && (self.side2 + self.side3) > self.side1 && (self.side3 + self.side1) > self.side2 {
            P = self.side1 + self.side2 + self.side3
            super.p = P
        }else{
            super.p = 0
        }
    }
    
    func area_of_shape() {
        var p: Double
        if (self.side1 + self.side2) > self.side3 && (self.side2 + self.side3) > self.side1 && (self.side3 + self.side1) > self.side2 {
            p = (self.side1 + self.side2 + self.side3)/2
            super.a=sqrt(p*(p-self.side1)*(p-self.side2)*(p-self.side3))
        } else {
            super.a=0
        }
    }
    
    
}
let shape1 = Triangle(side1_of_triangle:10,side2_of_triangle:12,side3_of_triangle:10)
shape1.perimeter_of_shape()
shape1.area_of_shape()
shape1.printAll()
