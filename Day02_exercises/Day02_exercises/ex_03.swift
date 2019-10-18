//
//  ex_03.swift
//  Day02_exercises
//
//  Created by Hoang Tung on 10/12/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//7, Nhập một năm công lịch bất kỳ , kiểm tra xem năm đó có phải năm nhuận hay không
//


func leapYear(){
    print("Nhap nam:")
    let year = Int(readLine()!)!
    if (year > 0 && year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) {
        print("\(year) is leap year")
    } else {
        print("\(year) is not leap year")
    }
}
