//
//  ex_04.swift
//  Day04_exercises
//
//  Created by Hoang Tung on 10/18/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation
//4, In ra họ và tên của một họ tên cho trước. (Ví dụ Phan Thanh Hoa -> In ra: Phan Hoa)

func printName(){
    print("Nhap ten day du:")
    let fullName = readLine()
    let nameArray = fullName!.components(separatedBy: " ")
//    print(nameArray)
    print("Ho ten: \(nameArray[0]) \(nameArray[nameArray.count - 1])")
}
