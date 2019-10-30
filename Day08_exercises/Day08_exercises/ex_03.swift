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
        self.dateString = readLine()!
        self.dateFormatter.dateFormat = "dd-MM-yyyy"
        self.dateFormatter.timeZone = TimeZone(identifier: "GMT")
        self.date = self.dateFormatter.date(from: self.dateString)!
    }
    
    func printNumberOfDays() {
        let interval = self.calendar.dateInterval(of: Calendar.Component.month, for: self.date)
        let days = self.calendar.dateComponents([Calendar.Component.day], from: interval!.start, to: interval!.end).day!
        print("Số ngày trong tháng là: \(days)")
    }
    
    func printNextDay() {
        let nextDay = self.calendar.date(byAdding: Calendar.Component.day, value: 1, to: self.date)
        let nextDayString = self.dateFormatter.string(from: nextDay!)
        print("Ngày tiếp theo là: \(nextDayString)")
    }
    
    func printPerviousDay() {
        let perviousDay = self.calendar.date(byAdding: .day, value: -1, to: self.date)
        let perviousDayString = dateFormatter.string(from: perviousDay!)
        print("Ngày trước đó là: \(perviousDayString)")
    }
}
