//
//  ex_05.swift
//  Day02_exercises
//
//  Created by Hoang Tung on 10/12/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//9, Tìm số n bé nhất sao cho n! lớn hơn một số m cho trước (m nhập từ bàn phím).

func smallestFactorial(){
    print("Nhap so m:")
    let m = Int(readLine()!)!
    var n = 1
    var r = 1
    while r < m {
        n += 1
        r *= n
    }
    print("n = \(n)")
}
