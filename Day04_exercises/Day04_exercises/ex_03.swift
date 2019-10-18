//
//  ex_03.swift
//  Day04_exercises
//
//  Created by Hoang Tung on 10/18/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation
//3, Liệt kê tất cả các ước số của một số tự nhiên nhập từ bàn phím.

func printDivisor() {
    print("Nhap so tu nhien:")
    let number = Int(readLine()!)!
    if number < 0 {
        print("\(number) khong phai so tu nhien")
    } else if number == 0 {
        print("0 co vo so uoc so!")
    } else {
        var divisors: [Int] = []
        for i in 1...(Int(number / 2)) {
            if number % i == 0 {
                divisors.append(i)
            }
        }
        divisors.append(number)
        print("\(number) co tap hop uoc so: \(divisors)")
    }
}
