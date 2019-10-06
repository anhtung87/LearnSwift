//
//  ex_04.swift
//  Day01_exercises
//
//  Created by Hoang Tung on 10/6/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

/*
Cho 2 số a và b, kiểm tra xem a có chia hết cho b không?
*/

func check(){
    print("Input your dividend:")
    let dividend = Int(readLine()!)!
    print("Input your divisor:")
    let divisor = Int(readLine()!)!
    if isDivisibleBy(dividend: dividend, divisor: divisor) {
        print("\(dividend) is divisible by \(divisor).")
    } else {
        print("\(dividend) does not divisible by \(divisor).")
    }
}

func isDivisibleBy(dividend: Int, divisor: Int) -> Bool {
    let surplus: Int = dividend % divisor
    let result: Bool = surplus == 0 ? true : false
    return result
}
