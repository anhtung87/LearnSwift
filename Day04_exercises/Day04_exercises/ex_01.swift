//
//  ex_01.swift
//  Day04_exercises
//
//  Created by Hoang Tung on 10/17/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//1, Sắp xếp mảng số nguyên theo chiều tăng dần và giảm dần

func minSort(array: [Int]) -> [Int] {
    var result: [Int] = []
    var array2: [Int] = []
    var min: Optional<Int> = nil
    for _ in 1...array.count {
        if min == nil {
            min = soNhoNhat(array: array)
            result.append(min!)
            array2 = array.filter{$0 != min}
        } else {
            min = soNhoNhat(array: array2)
            result.append(min!)
            array2 = array2.filter{$0 != min}
        }
    }
    return result
}

func soNhoNhat(array: [Int]) -> Int {
    if array.count == 1 {
        return array[0]
    }
    var min = array[0]
    for number in array[1...] {
        if number < min {
            min = number
        }
    }
    return min
}

func maxSort(array: [Int]) -> [Int] {
    var result: [Int] = []
    var array2: [Int] = []
    var max: Optional<Int> = nil
    for _ in 1...array.count {
        if max == nil {
            max = soLonNhat(array: array)
            result.append(max!)
            array2 = array.filter{$0 != max}
        } else {
            max = soLonNhat(array: array2)
            result.append(max!)
            array2 = array2.filter{$0 != max}
        }
    }
    return result
}

func soLonNhat(array: [Int]) -> Int {
    if array.count == 1 {
        return array[0]
    }
    var max = array[0]
    for number in array[1...] {
        if number > max {
            max = number
        }
    }
    return max
}
