//
//  ex_06.swift
//  Day04_exercises
//
//  Created by Hoang Tung on 10/18/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation
//6, Viết chương trình nhập vào số nguyên dương N (N<=32767), in ra màn hình những số hoàn hảo nhỏ hơn N (số hoàn hảo là số bằng tổng các ước số của nó mà không kể chính nó)

func printPrefectNumbers(){
    print("Nhap so n:")
    let number = Int(readLine()!)!
    var perfectNumberArray: [Int] = [1]
    for i in 2..<number {
        if isPerfectNumber(number: i) {
            perfectNumberArray.append(i)
        }
    }
    print("Tap hop cac so hoan hao nho hon \(number): \(perfectNumberArray)")
}

func isPerfectNumber(number: Int) -> Bool {
    var sum = 0
    for i in 1...(Int(number / 2)) {
        if number % i == 0 {
            sum += i
        }
    }
    return sum == number
}
