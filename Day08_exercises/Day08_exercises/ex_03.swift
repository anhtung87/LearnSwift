//
//  ex_03.swift
//  Day08_exercises
//
//  Created by Hoang Tung on 10/29/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

func printDate() {
    print("Nhập ngày tháng năm theo định dạng dd-MM-yyyy:")
    let dateString = readLine()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd-MM-yyyy"
    dateFormatter.timeZone = TimeZone(identifier: "GMT")
    let dateFromString = dateFormatter.date(from: dateString!)
    
    // Tính số ngày trong tháng của ngày nhập vào
    let calendar = Calendar.current
    let interval = calendar.dateInterval(of: Calendar.Component.month, for: dateFromString!)
    let days = calendar.dateComponents([Calendar.Component.day], from: interval!.start, to: interval!.end).day!
    print("Số ngày trong tháng là: \(days)")
    
    // Ngày tiếp theo của ngày nhập
    let dayAfter = calendar.date(byAdding: Calendar.Component.day, value: 1, to: dateFromString!)
    let dayAfterString = dateFormatter.string(from: dayAfter!)
    print("Ngày tiếp theo là: \(dayAfterString)")
    
    // Ngày trước ngày nhập
    let dayBefore = calendar.date(byAdding: .day, value: -1, to: dateFromString!)
    let dayBeforeString = dateFormatter.string(from: dayBefore!)
    print("Ngày trước đó là: \(dayBeforeString)")
}
