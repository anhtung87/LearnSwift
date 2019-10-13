//
//  bai_tap.swift
//  Day03
//
//  Created by Hoang Tung on 10/12/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

func bai_tap(){
    var names: [String] = ["An", "Long", "Trang", "Nam", "Lam"]
    print(names)
    names.insert("Quang", at: 2)
    print(names)
    names.removeLast()
    print(names)
    let t: String = "Nhung"
    if names.contains(t) {
        print("\(t) co trong \(names)")
    } else {
        print("\(t) khong co trong \(names)")
    }
}

func replace(array: [Int]){
    var array2 = array
    if array2.isEmpty {
        print(array2)
    } else {
        for (index, number) in array2.enumerated(){
            if number < 0 {
                array2[index] = 0
            }
        }
        print(array2)
    }
}

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
