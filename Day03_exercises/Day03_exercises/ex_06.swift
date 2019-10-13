//
//  ex_06.swift
//  Day03_exercises
//
//  Created by Hoang Tung on 10/13/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//6, Đưa ra: phần tử lớn nhất, phần tử bé nhất, trung bình cộng của một dãy số cho trước

func ex06(array: [Float]) {
    var min: Float = array[0]
    var max: Float = array[0]
    var total: Float = 0
    for number in array {
        if number < min {
            min = number
        } else if number > max {
            max = number
        }
        total += number
    }
    print("min: \(min)")
    print("max: \(max)")
    print("average: \(total/Float(array.count))")
}
