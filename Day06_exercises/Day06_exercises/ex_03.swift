//
//  ex_03.swift
//  Day06_exercises
//
//  Created by Hoang Tung on 10/25/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//Giải phương trình bậc 2: ax2 + bx + c = 0

func phuongTrinhBac2() {
    // Nhập phương trình
    print("Nhập số a:")
    let a = Float(readLine()!)!
    print("Nhập số b:")
    let b = Float(readLine()!)!
    print("Nhập số c:")
    let c = Float(readLine()!)!
    
    let phuongTrinh = "phương trình \(Int(a))x^2 + \(Int(b))x + \(Int(c)) = 0"
    
    if a == 0 && b == 0 && c == 0 {
        print("\(phuongTrinh) có vô số nghiệm")
    } else if a == 0 && b == 0 && c != 0 {
        print("\(phuongTrinh) vô nghiệm")
    } else if a == 0 && b != 0 {
        let x = -c / b
        print("\(phuongTrinh) có 1 nghiệm: x = \(x)")
    } else {
        let delta = b * b - 4 * a * c
        switch delta {
        case 0:
            print("\(phuongTrinh) có 1 nghiệm: x = \(-b / (a * 2))")
        case _ where delta > 0:
            let x1 = (-b - sqrtf(delta)) / (a * 2)
            let x2 = (-b + sqrtf(delta)) / (a * 2)
            print("\(phuongTrinh) có 2 nghiệm:")
            print("x1 = \(x1)")
            print("x2 = \(x2)")
        default:
            print("\(phuongTrinh) vô nghiệm")
        }
    }
}
