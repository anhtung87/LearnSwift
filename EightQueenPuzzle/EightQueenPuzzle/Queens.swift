//
//  Queens.swift
//  EightQueenPuzzle
//
//  Created by Hoang Tung on 11/23/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation


class Queens {
    let size: Int
    var solutions: Int
    
    init(size: Int) {
        self.size = size
        self.solutions = 0
        self.solve()
    }
    
    func solve() {
        let positions = Array(repeating: -1, count: size)
        putQueen(positions, 0)
        print("Found ", solutions, " solutions.")
    }
    
    func putQueen(_ positions: [Int], _ target_row: Int) {
        if target_row == size {
            showFullBoard(positions)
            solutions += 1
        } else {
            for column in 0..<size {
                if checkPlace(positions, target_row, column) {
                    var pos = positions
                    pos[target_row] = column
                    putQueen(pos, target_row + 1)
                }
            }
        }
    }
    
    func checkPlace(_ positions: [Int], _ row: Int, _ column: Int) -> Bool {
        for i in 0..<row {
            if positions[i] == column || positions[i] - i == column - row || positions[i] + i == column + row {
                return false
            }
        }
        return true
    }
    
    func showFullBoard(_ positions: [Int]) {
        for row in 0..<size {
            var line = ""
            for column in 0..<size {
                if positions[row] == column {
                    line += String(row) + " "
                } else {
                    line += ". "
                }
            }
            print(line)
        }
        print("\n")
    }
}
