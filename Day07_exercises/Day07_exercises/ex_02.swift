//
//  ex_02.swift
//  Day07_exercises
//
//  Created by Hoang Tung on 10/27/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//Hiển thị số ngày của tháng. Với tháng 2 có 29 ngày nếu là năm nhuận, 28 ngày nếu là năm không nhuận.

func soNgayTrongThang() {
    print("Nhập năm:")
    let year = Int(readLine()!)!
    print("Nhập tháng:")
    let month = Int(readLine()!)!
    let monthsHave31Days = [1, 3, 5, 7, 8, 10, 12]
    let monthsHave30Days = [4, 6, 9, 11]
    switch month {
    case _ where monthsHave31Days.contains(month):
        print("Tháng \(month) năm \(year) có 31 ngày.")
    case _ where monthsHave30Days.contains(month):
        print("Tháng \(month) năm \(year) có 30 ngày.")
    case 2:
        let days = isLeap(year: year) ? 29 : 28
        print("Tháng \(month) năm \(year) có \(days) ngày.")
    default:
        print("Không có tháng \(month)")
    }
}

func isLeap(year: Int) -> Bool {
    if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) {
        return true
    } else {
        return false
    }
}
