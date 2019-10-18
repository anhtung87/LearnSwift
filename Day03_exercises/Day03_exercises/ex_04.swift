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
    var firstOdd: Optional<Int> = nil
    var lastEven: Optional<Int> = nil
    for (index, number) in array.enumerated() {
        if firstOdd == nil && (number % 2 != 0) {
            firstOdd = index + 1
        } else if number % 2 == 0 {
            lastEven = index + 1
        }
    }
    print("First Odd number's index: \(firstOdd!)")
    if lastEven != nil {
        
    }
    print("Last Even Number's index: \(lastEven!)")
}
