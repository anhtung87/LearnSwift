//
//  ex_05.swift
//  Day05_exercises
//
//  Created by Hoang Tung on 10/20/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//5, Hai anh em nhà cừu không có gì chơi, thằng anh mới đố thằng em: “Tao cho mày 1 số, nếu nó chẵn thì chia đôi, nó lẻ thì nhân 3 cộng 1. Đố mày biết sau bao nhiêu phép tính thì nó ra 1 ???”. Ông em ngẩn tò te không biết trả lời như nào. Bạn hãy giúp chú bé 1 tay với. In ra đáp án hoặc “-1” nếu ko có số nào hợp lệ.


// cách 2
func collatz() {
    print("Nhap so nguyen:")
    var x = Int(readLine()!)!
    if x < 0 {
        print("-1")
        return
    }
    var times = 0
    while x != 1 {
        if x % 2 == 0 {
            x /= 2
        } else {
            x = 3 * x + 1
        }
        times += 1
    }
    print(times)
}
