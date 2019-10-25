//
//  ex_04.swift
//  Day06_exercises
//
//  Created by Hoang Tung on 10/25/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//Viết chương trình tính tiền cước TAXI. Biết rằng:
//    – Km đầu tiên là 5000đ
//    – 30Km tiếp theo là 4000đ
//    – Nếu lớn hơn 30Km thì mỗi Km thêm ra sẽ phải trả là 3000đ
//    – Hãy nhập số Km sau đó in ra số tiền phải trả.

func tinhTienTaxi() {
    print("Nhập số km:")
    let km = Int(readLine()!)!
    
    print("Tổng tiền taxi: \(price(km)) vnđ")
}

func price(_ km: Int) -> Int {
    switch km {
    case _ where km < 1:
        return 0
    case 1:
        return 5000
    case _ where km <= 31:
        return 5000 + (km - 1) * 4000
    default:
        return 5000 + 4000 * 30 + (km - 31) * 3000
    }
}
