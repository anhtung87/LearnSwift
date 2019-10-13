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
    let timeArray = timeString.components(separatedBy: " : ")
    var hours = Int(timeArray[0])
    var minutes = Int(timeArray[1])
    var seconds = Int(timeArray[2])
    print("Nhap so nguyen:")
    let x = Int(readLine()!)!
    hours! += Int(x / 3600)
    minutes! += Int((x % 3600) / 60)
    seconds! += Int((x % 3600) % 60)
    print("New time: \(hours!) : \(minutes!) : \(seconds!)")
}

