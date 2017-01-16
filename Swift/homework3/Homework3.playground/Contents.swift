//: Playground - noun: a place where people can play

import UIKit

/* class inheritance. */


class Shape {
    var info: String = ""
    init (desc: String) {
        self.info = desc
    }
    func perimeter() -> Double {
        return 0
    }

    func area() -> Double {
        return 0
    }
 
    func draw() -> String {
        return "\(info)  perimeter is \(perimeter()) and area is \(area())"
    }
 }

class Triangle:Shape {

    var side1: Double
    var side2: Double
    var side3: Double
    
    init(name: String, a:Double, b:Double, c:Double){
        
        
        self.side1=a
        self.side2=b
        self.side3=c
        super.init(desc: name)
        
    }
    
    /* function perimeter is return 0 if the 3 sides can not make a triangle, otherwise return a real perimeter of triangle */
    
    override func perimeter() -> Double {
        if side1+side2 > side3 && side2+side3 > side1 && side3+side1 > side2 {
            return side1 + side2 + side3
            
        } else {
            return 0
        }
    }
   
    /* function area is return 0 if the 3 sides can not make a triangle, otherwise return a real area of triangle using Heron's Formula */
    override func area() -> Double {
        let p = (side1+side2+side3)/2
        if side1+side2 > side3 && side2+side3 > side1 && side3+side1 > side2 {
            return sqrt(p*(p-side1)*(p-side2)*(p-side3))
        } else {
            return 0
        }
    }
    
}

class Square:Shape {
    var side: Double = 0

    override func perimeter() -> Double {
        return 4*side
    }

    override func area() -> Double {
        return side * side
    }
 
}

class Rhombus:Shape {
    var side: Double = 0
    var diagonal: Double = 0
    override func perimeter() -> Double {
        return 4*side
    }
    
    override func area() -> Double {
        return sqrt(((side+side+diagonal)/2)*(((side+side+diagonal)/2)-side)*(((side+side+diagonal)/2)-side)*(((side+side+diagonal)/2)-diagonal))*2
    }
    
}

class Rectangle:Shape {
    var side1: Double = 0
    var side2: Double = 0
    override func perimeter() -> Double {
        return 2*side1+2*side2
    }
    
    override func area() -> Double {
        return side1*side2
    }
    
}


class Pentagon:Shape {
    var side: Double = 0
    
    override func perimeter() -> Double {
        return 5*side
    }
    
    override func area() -> Double {
        return ((1/2)*((side/2)/0.726542528)*(side*5))
    }
    
}

class Hexagon:Shape {
    var side: Double = 0
    
    override func perimeter() -> Double {
        return 6*side
    }
    
    override func area() -> Double {
        return ((3*sqrt(3))/2)*(side*side)
    }
    
}



let shape1 = Triangle(name: "Triangle", a: 5, b: 3, c:3)
//shape1.name = "My Triangle"
//shape1.side1 = 5
//shape1.side2 = 3
//shape1.side3 = 3
shape1.draw()
/*
let shape2 = Square()
shape2.name = "My Square"
shape2.side = 5
shape2.draw()

let shape3 = Rhombus()
shape3.info = "My Rhombus"
shape3.side = 5
shape3.diagonal = 7.071067811865475 // sqrt (5*5 + 5*5)
shape3.draw()

let shape4 = Rectangle()
shape4.info = "My Retangle"
shape4.side1 = 10
shape4.side2 = 5
shape4.draw()


let shape5 = Pentagon()
shape5.info = "My Pentagon"
shape5.side = 5
shape5.draw()


let shape6 = Hexagon()
shape6.info = "Hexagon"
shape6.side = 5
shape6.draw()
 */
