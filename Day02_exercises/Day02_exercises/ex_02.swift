//
//  ex_02.swift
//  Day02_exercises
//
//  Created by Hoang Tung on 10/12/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//6, Nhập 3 giá trị nguyên dương a, b, c. Kiểm tra xem a, b, c có phải là 3 cạnh của tam giác không?
//- Nếu là 3 cạnh của tam giác thì tính diện tích của tam giác.
//- Nếu không phải là tam giác in ra “a, b, c không phải là 3 cạnh của tam giác”


func triangle(){
    print("Nhap so a:")
    let a = Float(readLine()!)!
    print("Nhap so b:")
    let b = Float(readLine()!)!
    print("Nhap so c:")
    let c = Float(readLine()!)!
    if a + b > c && a + c > b && b + c > a {
        print("Area of Triange: \(areaOfTriangle(a: a, b: b, c: c))")
    } else {
        print("\(a), \(b), \(c) khong phai la 3 canh cua tam giac")
    }
}

func areaOfTriangle(a: Float, b: Float, c: Float) -> Float {
    let p: Float = (a + b + c) / 2
    let result = sqrtf(p * (p - a) * (p - b) * (p - c))
    return result
}
