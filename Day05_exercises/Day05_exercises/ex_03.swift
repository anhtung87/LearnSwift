//
//  ex_03.swift
//  Day05_exercises
//
//  Created by Hoang Tung on 10/20/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//3, Vẽ tam giác vuông:
//
//*
//* *
//* * *
//* * * *
//* * * * *

func drawTriangle(){
    print("Nhap chieu cao:")
    let height = Int(readLine()!)!
    if height < 2 {
        drawTriangle()
        return
    }
    for line in 1...height {
        for _ in 1...line {
            print("*", terminator:"")
        }
        print()
    }
}
