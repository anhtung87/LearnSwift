//
//  ex_02.swift
//  Day01_exercises
//
//  Created by Hoang Tung on 10/6/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

/*
 Tính tổng bình phương 2 số a, b (a, b nhập từ bàn phím).
*/

func calculateSumOfSquare(){
    print("Input first number:")
    let a = Int(readLine()!)!
    print("Input second number:")
    let b = Int(readLine()!)!
    print("Sum of square: \(a * a + b * b)")
}
