//
//  ex_01.swift
//  Day07_exercises
//
//  Created by Hoang Tung on 10/27/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//Đếm số nguyên tố trong đoạn [a, b]

func timSoNguyenTo() {
    print("Nhập số a:")
    let a = Int(readLine()!)!
    print("Nhập số b:")
    let b = Int(readLine()!)!
    if a >= b {
        print("b phải lớn hơn a")
        return timSoNguyenTo()
    }
    let cacSoNguyenTo = timCacSoNguyenTo(b)
    let primes = cacSoNguyenTo.filter {$0>=a}
    print("Các số nguyên tố từ \(a) đến \(b) là:")
    print(primes)
}

func timCacSoNguyenTo(_ b: Int) -> [Int] {
    // Tìm tất cả số nguyên từ từ 2 đến b
    // Với từng số nguyên tố trong khoảng 2 -> b, lưu lại trong array cacSoNguyenTo. Khi chạy vòng for từ 2 -> n, kiểm tra từng number có chia hết cho từng số trong array cacSoNguyenTo không. Nếu chia hết thì số đấy không phải là số nguyên tố. Nếu không chia hết cho bất kì số nào -> number là số nguyên tố -> lưu lại trong array cacSoNguyenTo.
    var cacSoNguyenTo: [Int] = []
    for number in 2...b {
        var laSoNguyenTo = true
        for soNguyenTo in cacSoNguyenTo {
            if number % soNguyenTo == 0 {
                laSoNguyenTo = false
            }
        }
        if laSoNguyenTo {
            cacSoNguyenTo.append(number)
        }
    }
    return cacSoNguyenTo
}
