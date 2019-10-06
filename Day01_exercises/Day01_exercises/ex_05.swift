//
//  ex_05.swift
//  Day01_exercises
//
//  Created by Hoang Tung on 10/6/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

/*
 Tìm giá trị lớn nhất của 2 số
*/

func checkGreaterNumber(){
    print("Input first number:")
    let first = Int(readLine()!)!
    print("Input second number:")
    let second = Int(readLine()!)!
    print(max(number_1: first, number_2: second))
}

func max(number_1: Int, number_2: Int) -> String {
    if number_1 > number_2 {
        return "\(number_1) is greater than \(number_2)"
    } else if number_1 < number_2 {
        return "\(number_1) is smaller than \(number_2)"
    } else {
        return "\(number_1) and \(number_2) are equal."
    }
}
