//
//  ex_03.swift
//  Day03_exercises
//
//  Created by Hoang Tung on 10/13/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//3. Tìm số lớn thứ 2 trong mảng số nguyên

func second(array: [Int]){
    if array.isEmpty {
        print("\(array) is Empty")
    } else if array.count == 1 {
        print("Array has just 1 element - \(array[0])")
    } else {
        var max = array[0]
        var second = array[0]
        for number in array[1...] {
            if number > max {
                second = max
                max = number
            } else if number < max && number > second {
                second = number
            }
        }
        print("So lon thu 2: \(second)")
    }
}
