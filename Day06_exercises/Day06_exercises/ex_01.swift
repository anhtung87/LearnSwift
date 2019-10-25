//
//  ex_01.swift
//  Day06_exercises
//
//  Created by Hoang Tung on 10/25/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//Tính tổng các chữ số trong 1 số

func sum() {
    print("Nhập số bất kỳ:")
    let input = readLine()!
    
    // Trả ra thông báo nếu người dùng không nhập số
    if Int(input) == nil {
        print("\(input) không phải là số")
        return sum()
    }
    // Để tính tổng các chữ số, cần chuyển input từ type String sang type Array với element là các chữ số trong input
    let numbers = input.map {Int(String($0))}
    
    var total = 0
    for number in numbers {
        total += number!
    }
    
    print("\(input) có tổng các chữ số là: \(total)")
}
