//
//  main.swift
//  Day02
//
//  Created by Hoang Tung on 10/11/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation


var y: Int?
var x: Int!

x = 3
y = 7

// cau truc guard else
func checkGuardElse() -> Int{
    guard let a = y else {
        print("y \(String(describing: y))")
        return 3
    }
    return a
}

//print(checkGuardElse())

y = nil
// cau truc if let
func checkIfLet(){
    if let a = y {
        print(a)
    }
    print("done!")
}

//checkIfLet()

// switch ... case
//var option = 25
//switch option {
//case 0...10:
//    print("Case 0...10")
//    fallthrough
//case 11...20:
//    print("Case 11...20")
//    option = 16
//    break
//case 12...20:
//    print("Case 15")
//case 21...30:
//    print("Case 21...30")
//default:
//    print("Default case")
//}
//print(option)
//
//
//func demoIfElse() {
//    let n: Int = 20
//    if n < 0 {
//        print("n is negative")
//    } else if n > 0 {
//        print("n > 0")
//    } else if n > 10 {
//        print("n > 10")
//    }
//}
//
//demoIfElse()

func ranking() {
    print("Nhap diem:")
    let n = Int(readLine()!)!
    switch n {
    case 8...10:
        print("Giỏi")
    case 5..<8:
        print("Khá")
    case 0..<5:
        print("Trung bình")
    default:
        ranking()
    }
}

//ranking()

func ranking_2() {
    print("Nhap diem:")
    let n = Int(readLine()!)!
    if 8 <= n && n <= 10 {
        print("Gioi")
    } else if 5 <= n && n < 8 {
        print("Kha")
    } else if 0 <= n && n < 5 {
        print("Trung binh")
    } else {
        ranking_2()
    }
}

//ranking_2()

//for i in 0...10 {
//    print(i)
//}
//
//var n = 1
//while n < 10 {
//    print(n)
//    n += 1
//}

var arrays: [Int] = [1, 2, 3, 4, 5]
for (index, value) in arrays.enumerated() {
    print(index, value)
}
