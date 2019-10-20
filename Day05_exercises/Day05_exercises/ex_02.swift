//
//  ex_02.swift
//  Day05_exercises
//
//  Created by Hoang Tung on 10/20/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//2, Vẽ hình chữ nhật rỗng:
//
//* * * * * * *
//*           *
//*           *
//* * * * * * *

func drawRectangle2() {
    print("Nhap chieu cao:")
    let height = Int(readLine()!)!
    if height < 2 {
        drawRectangle2()
        return
    }
    print("Nhap chieu dai (so le):")
    let width = Int(readLine()!)!
    if width < 2 || width % 2 == 0 {
        drawRectangle2()
        return
    }
    for line in 1...height {
        if line == 1 || line == height {
            for space in 1...(2 * width - 1) {
                if space % 2 == 0 {
                    print(" ", terminator:"")
                } else {
                    print("*", terminator:"")
                }
            }
            print()
        } else {
            for space in 1...(2 * width - 1) {
                if space == 1 || space == 2 * width - 1 {
                    print("*", terminator:"")
                } else {
                    print(" ", terminator:"")
                }
            }
            print()
        }
    }
}
