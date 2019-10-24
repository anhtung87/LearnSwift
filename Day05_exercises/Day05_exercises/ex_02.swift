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
    if width < 2 {
        drawRectangle2()
        return
    }
    for line in 1...height {
        if line == 1 || line == height {
            for _ in 1...width {
                print("*", terminator: " ")
            }
            print()
        } else {
            for space in 1...width {
                if space == 1 || space == width {
                    print("*", terminator:" ")
                } else {
                    print(" ", terminator:" ")
                }
            }
            print()
        }
    }
}
