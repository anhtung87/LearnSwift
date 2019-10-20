//
//  ex_01.swift
//  Day05_exercises
//
//  Created by Hoang Tung on 10/20/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//1, Vẽ hình chữ nhật đặc:
//
//* * * * * * *
//* * * * * * *
//* * * * * * *
//* * * * * * *

func drawRectangle() {
    print("Nhap chieu cao:")
    let height = Int(readLine()!)!
    if height < 2 {
        drawRectangle()
        return
    }
    print("Nhap chieu dai (so le):")
    let width = Int(readLine()!)!
    if width < 2 || width % 2 == 0 {
        drawRectangle()
        return
    }
    for _ in 1...height {
        for space in 1...(2 * width - 1) {
            if space % 2 == 0 {
                print(" ", terminator:"")
            } else {
                print("*", terminator:"")
            }
        }
        print()
    }
}
