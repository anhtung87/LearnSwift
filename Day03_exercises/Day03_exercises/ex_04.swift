//
//  ex_04.swift
//  Day03_exercises
//
//  Created by Hoang Tung on 10/13/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//4, Trả về Vị trí đầu tiên của số lẻ, vị trí cuối cùng của số chẵn trong mảng bất kì.
func findFirstOddAndLastEven(array: [Int]){
    var firstOdd: Int = -1
    var lastEven: Int = -1
    for (index, number) in array.enumerated() {
        if firstOdd == -1 && number % 2 == 1 {
            firstOdd = index
        } else if number % 2 == 0 {
            lastEven = index
        }
    }
    print("First Odd number's index: \(firstOdd)")
    print("Last Even Number's index: \(lastEven)")
}
