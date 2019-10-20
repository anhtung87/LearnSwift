//
//  ex_04.swift
//  Day05_exercises
//
//  Created by Hoang Tung on 10/20/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//4, Vẽ tam giác cân ngược:
//
//* * * * * * *
//  * * * * *
//    * * *
//      *

func drawIsoscelesTriangle(){
    print("Nhap chieu cao:")
    let height = Int(readLine()!)!
    if height < 2 {
        drawIsoscelesTriangle()
        return
    }
    let width = 4 * height - 3
    for line in 1...height {
        for space in 1...width {
            if space >= 2 * (line - 1) && space <= (width - 2 * (line - 1)) {
                if space % 2 == 0 {
                    print(" ", terminator: "")
                } else {
                    print("*", terminator: "")
                }
            } else {
                print(" ", terminator: "")
            }
        }
        print()
    }
}
