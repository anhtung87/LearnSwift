//
//  ex_03.swift
//  Day08_exercises
//
//  Created by Hoang Tung on 10/29/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

class DeterminedDay {
    var dateString: String
    var date: Date
    var dateFormatter: DateFormatter = DateFormatter()
    var calendar: Calendar = Calendar.current
    
    init() {
        print("Nhập ngày tháng năm theo định dạng dd-MM-yyyy:")
        dateString = readLine()!
        dateFormatter.dateFormat = "dd-MM-yyyy"
        dateFormatter.timeZone = TimeZone(identifier: "GMT")
        date = dateFormatter.date(from: dateString)!
    }
    
    func printNumberOfDays() {
        let interval = calendar.dateInterval(of: Calendar.Component.month, for: date)
        let days: Int = calendar.dateComponents([Calendar.Component.day], from: interval!.start, to: interval!.end).day!
        print("Số ngày trong tháng là: \(days)")
    }
    
    func printNextDay() {
        let nextDay = calendar.date(byAdding: Calendar.Component.day, value: 1, to: date)
        let nextDayString = dateFormatter.string(from: nextDay!)
        print("Ngày tiếp theo là: \(nextDayString)")
    }
    
    func printPerviousDay() {
        let perviousDay = self.calendar.date(byAdding: .day, value: -1, to: date)
        let perviousDayString = dateFormatter.string(from: perviousDay!)
        print("Ngày trước đó là: \(perviousDayString)")
    }
}
