//
//  ex_02.swift
//  Day03_exercises
//
//  Created by Hoang Tung on 10/13/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//2. Tìm số nhỏ nhất và lớn nhất trong mảng số nguyên

func minMax(array: [Int]){
    if array.isEmpty {
        print("\(array) is Empty")
    } else {
        var min = array[0]
        var max = array[0]
        for number in array[1...] {
            if number < min {
                min = number
            }
            if number > max {
                max = number
            }
        }
        print("min: \(min)")
        print("max: \(max)")
    }
}
