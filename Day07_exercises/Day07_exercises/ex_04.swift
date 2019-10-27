//
//  ex_04.swift
//  Day07_exercises
//
//  Created by Hoang Tung on 10/27/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//Chèn phần tử có giá trị X vào mảng sao cho mảng vẫn có thứ tự tăng dần.

func insertElement2(_ input: [Float]) {
    print("Nhập số cần chèn:")
    let x = Float(readLine()!)!
    let array = input.sorted()
    let smallerThanX = array.filter {$0 <= x}
    let greaterThanX = array.filter {$0 > x}
    print(smallerThanX + [x] + greaterThanX)
}
