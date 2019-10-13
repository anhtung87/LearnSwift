//
//  ex_08.swift
//  Day03_exercises
//
//  Created by Hoang Tung on 10/13/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation
//8, Viết chương trình vẽ một chữ X bằng các dấu * với chiều cao nhập từ bàn phím (chiều cao lớn hơn 0 và là số lẻ)
//
//*       *
// *     *
//  *   *
//    *
//  *   *
// *     *
//*       *

func drawX(){
    print("Nhap chieu cao:")
    let height = Int(readLine()!)!
    if height < 0 || height % 2 == 0 {
        drawX()
    } else {
        let characterArray = Array(repeating: " ", count: height)
        for line in 1...height {
            var array = characterArray
            array[line - 1] = "*"
            array[height - line] = "*"
            print(array.joined())
        }
    }
}
