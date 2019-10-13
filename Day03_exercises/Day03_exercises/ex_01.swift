//
//  ex_01.swift
//  Day03_exercises
//
//  Created by Hoang Tung on 10/13/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//1. Cho một mảng số nguyên. Kiểm tra nếu trong mảng có phần tử âm thì thay thế nó bằng 0.

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
