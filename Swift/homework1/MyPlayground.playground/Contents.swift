//: Playground - noun: a place where people can play

import UIKit

// arc4random_uniform връща от 0 до 5 и прибавяме 1 защото зарчето е от 1 до 6
var dice = arc4random_uniform(6) + 1
// max broj tochki/posiciq
let max_tochki = 36
//tochkite na igracha
var tochki = 0
//razmera na igralnoto pole
var playground = [Int]  (repeating: 0, count: max_tochki)

// змии
playground[34] = -5
playground[24] = -3
playground[18] = -4
playground[9] = -2
// стълби
playground[31] = 2
playground[22] = 3
playground[15] = 4
playground[4] = 8
while tochki < max_tochki {
    dice = arc4random_uniform(6) + 1
    tochki += Int(dice) //preobrazuvame UInt32 kam int
    print("dice:", dice)
    print("tochki pole:", playground[tochki])
    print("total score:", tochki)
    
    if tochki < playground.count {
        tochki+=playground[tochki]
    }
}
