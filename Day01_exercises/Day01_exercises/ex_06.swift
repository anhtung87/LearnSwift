//
//  ex_06.swift
//  Day01_exercises
//
//  Created by Hoang Tung on 10/6/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

/*
 Giải phương trình bậc nhất
 */

func solve(){
    print("Solve First Order Equation: ax + b = 0")
    print("Input a:")
    let a = Int(readLine()!)!
    print("Input b:")
    let b = Int(readLine()!)!
    print(solveFirstOrderEquation(a: a, b: b))
}

func solveFirstOrderEquation(a: Int, b: Int) -> String {
    // ax + b = 0
    if a == 0 {
        return "The equation has no solution."
    }
    // a=! 0
    let x = Float(-b) / Float(a)
    return "The equation has an unique solution: x = \(x)"
}
