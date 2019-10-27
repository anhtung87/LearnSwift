//
//  ex_03.swift
//  Day07_exercises
//
//  Created by Hoang Tung on 10/27/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation
//Chèn phần tử có giá trị X vào phía sau phần tử có giá trị lớn nhất trong mảng.

func insertElement(_ arrayInput: [Float]) {
    print("Nhập giá trị cần chèn:")
    let x = Float(readLine()!)!
    var array = arrayInput
    // Tìm số lớn nhất trong mảng
    let max = array.max()
    // Dùng vòng lặp duyệt qua từng vị trí của các gía trị trong mảng. Nếu giá trị lớn nhất đứng ở vị trí k, thêm x vào vị trí k + 1. Tuy nhiên, nếu giá trị lớn nhất xuất hiện từ 2 lần trở lên trong mảng array. Số lượng phần tử trong mảng đã thay đổi khi thêm x. Vì vậy, cần dùng biến step để xác định đã thêm bao nhiêu phần tử.
    var step = 0
    for (index, number) in array.enumerated() {
        if number == max {
            array.insert(x, at: index + 1 + step)
            step += 1
        }
    }
    print(array)
}
