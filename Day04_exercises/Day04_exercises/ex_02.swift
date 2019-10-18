//
//  ex_02.swift
//  Day04_exercises
//
//  Created by Hoang Tung on 10/17/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation
//2, Viết chương trình nhập vào một số nguyên dương không lớn hơn 10000, in ra màn hình chữ số lớn thứ nhì có trong số đó (ví dụ nhập n = 1356 in ra 5). Trong trường hợp không có số lớn thứ nhì, thì in ra số lớn nhất.

func secondMax(){
    print("Nhap so nguyen duong <= 10000:")
    let x = Int(readLine()!)!
    let xString = String(x)
    let xArray = xString.map {
        Int(String($0))!
    }
    var maxNumber: Int! = max(xArray[0], xArray[1])
    var second: Int! = min(xArray[0], xArray[1])
    for number in xArray[2...] {
        if number > maxNumber {
            second = maxNumber
            maxNumber = number
        } else if second < number && number < maxNumber {
            second = number
        }
    }
    if second == maxNumber {
        print("So lon nhat: \(maxNumber!)")
    } else {
        print("So lon thu 2: \(second!)")
    }
}
