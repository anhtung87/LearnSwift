//
//  ex_02.swift
//  Day06_exercises
//
//  Created by Hoang Tung on 10/25/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//Kiểm tra tính đối xứng của một số

func tinhDoiXung() {
    print("Nhập số bất kỳ:")
    let input = readLine()!
    // Trả ra thông báo nếu người dùng không nhập số
    if Int(input) == nil {
        print("\(input) không phải là số")
        return tinhDoiXung()
    }
    // Để kiểm tra tính đối xứng, cần chuyển input từ type String sang type Array với element là các chữ số trong input
    let numbers = input.map {Int(String($0))}
    // 1 số không phải đối xứng nếu chữ số thứ tự i không bằng chữ số thứ tự n - i (trong đó, n là độ dài số)
    var doiXung = true
    let n = numbers.count
    for i in 0...((n - 1) / 2) {
        if numbers[i] != numbers[n - 1 - i] {
            doiXung = false
            break
        }
    }
    
    if doiXung {
        print("\(input) có tính đối xứng")
    } else {
        
    }
}

func tinhDoiXung2() {
    print("Nhập số bất kỳ:")
    let input = readLine()!
    // Trả ra thông báo nếu người dùng không nhập số
    guard let number = Int(input) else {
        print("\(input) không phải là số")
        return tinhDoiXung()
    }
    if number == Int(String(input.reversed())) {
        print("\(input) có tính đối xứng")
    } else {
        print("\(input) không có tính đối xứng")
    }
}
