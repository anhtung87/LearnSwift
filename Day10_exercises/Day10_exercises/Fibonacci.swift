//
//  Fibonacci.swift
//  Day10_exercises
//
//  Created by Hoang Tung on 11/3/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

func fibo(_ n: Int) -> Int {
    var a = 0
    var b = 1
    
    guard n > 1 else {
        return b
    }

    for _ in 1...n {
        (a, b) = (b, a + b)
    }
    return b
}
