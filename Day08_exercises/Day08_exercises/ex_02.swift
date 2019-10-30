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

class Rhombus {
    var lines: Int
    
    init() {
        print("Nhập chiều cao hình thoi:")
        self.lines = Int(readLine()!)!
    }
    
    func drawFull() {
        if self.lines < 0 || self.lines % 2 == 0 {
            print("số dòng của hình thoi phải là số lẻ")
            return
        }
        
        let spaces = self.lines
        for line in 1...self.lines {
            if line <= (self.lines + 1) / 2 {
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
                    if index > (2 * line - 1 - self.lines) / 2 && index < (3 * self.lines - 2 * line + 3) / 2 {
                        print("*", terminator: "")
                    } else {
                        print(" ", terminator: "")
                    }
                }
                print()
            }
        }
    }
    
    func drawHalf() {
        let width = self.lines % 2 == 0 ? self.lines / 2 : (self.lines + 1) / 2
        
        for line in 1...self.lines {
            for index in 1...width {
                if (line <= width && index <= line) || (line > width && index <= self.lines + 1 - line) {
                    print("*", terminator: "")
                } else {
                    print(" ", terminator: "")
                }
            }
            print()
        }
    }
}

