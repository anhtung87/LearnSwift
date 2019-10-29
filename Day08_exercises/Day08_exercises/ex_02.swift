//
//  ex_02.swift
//  Day08_exercises
//
//  Created by Hoang Tung on 10/29/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//In hình:
//*
//**
//***
//****
//*****
//*****
//****
//***
//**
//*
//
//    *
//   ***
//  *****
// *******
//*********
// *******
//  *****
//   ***
//    *

func drawFullRhombus() {
    print("Nhập chiều cao hình thoi:")
    let lines = Int(readLine()!)!
    
    if lines < 0 || lines % 2 == 0 {
        print("số dòng phải là số lẻ")
        return drawFullRhombus()
    }
    
    let spaces = lines
    for line in 1...lines {
        if line <= (lines + 1) / 2 {
            for index in 1...spaces {
                if index > (spaces - (2 * line - 1)) / 2 && index < (spaces + (2 * line - 1) + 2) / 2 {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print()
        } else {
            for index in 1...spaces {
                if index > (2 * line - 1 - lines) / 2 && index < (3 * lines - 2 * line + 3) / 2 {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print()
        }
    }
}

func drawHalfRhombus() {
    print("Nhập chiều cao hình thoi:")
    let lines = Int(readLine()!)!
    let width = lines % 2 == 0 ? lines / 2 : (lines + 1) / 2
    
    for line in 1...lines {
        if line <= width {
            for index in 1...width {
                if index <= line {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print()
        } else {
            for index in 1...width {
                if index <= lines + 1 - line {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print()
        }
    }
}
