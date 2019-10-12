//
//  ex_01.swift
//  Day02_exercises
//
//  Created by Hoang Tung on 10/12/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//5, Viết chương trình nhập vào 3 số nguyên a, b, c. Tìm, in ra số lớn nhất, số bé nhất.

func findMinMaxNumber(){
    print("Nhap so a:")
    let a = Int(readLine()!)!
    print("Nhap so b:")
    let b = Int(readLine()!)!
    print("Nhap so c:")
    let c = Int(readLine()!)!
    var min = a
    var max = a
    for number in [b, c] {
        if min > number {
            min = number
        }
        if max < number {
            max = number
        }
    }
    print("max: \(max)")
    print("min: \(min)")
}
