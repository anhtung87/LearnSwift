//
//  ex_04.swift
//  Day02_exercises
//
//  Created by Hoang Tung on 10/12/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//8, Nhập vào thời điểm T gồm 3 số theo dạng : “Giờ : Phút : Giây” và 1 số nguyên X <= 10000
//- Hỏi sau X giây kể từ thời điểm T thì thời gian là bao nhiêu ?
//- Hãy in ra theo dạng “Giờ : Phút : Giây”


func convertDatetime(){
    print("Nhap gio (gio : phut : giay):")
    let timeString = String(readLine()!)
    print("Nhap so nguyen:")
    let x = Int(readLine()!)!
    let timeFormatter = DateFormatter()
    timeFormatter.dateFormat = "HH : mm: ss"
    timeFormatter.timeZone = TimeZone(abbreviation: "UTC")
    let time = timeFormatter.date(from: timeString)
    print(time)
}
