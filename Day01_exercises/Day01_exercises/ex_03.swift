//
//  ex_03.swift
//  Day01_exercises
//
//  Created by Hoang Tung on 10/6/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

/*
 3*, Viết chương trình nhập vào số nguyên n. Hỏi:
 - n là số nguyên dương hay không?
 - n có phải là số chẵn hay không?
 - n có chia hết cho 5 hay không?
 - n có phải là số nguyên tố hay không?
*/

func guess(){
    print("Input your integer:")
    let number = Int(readLine()!)!
    print("Is \(number) a positive integer? \(answer(result: isPositive(n: number)))")
    print("Is \(number) a Even number? \(answer(result: isEven(n: number)))")
    print("Is \(number) divisible by 5? \(answer(result: isDivisibleBy5(n: number)))")
    print("Is \(number) a Prime? \(answer(result: isPrime(n: number)))")
}

func answer(result: Bool) -> String {
    let answer = result ? "Yes" : "No"
    return answer
}

func isPositive(n: Int) -> Bool {
    if n > 0 {
        return true
    } else {
        return false
    }
}

func isEven(n: Int) -> Bool {
    if n % 2 == 0 {
        return true
    } else {
        return false
    }
}

func isDivisibleBy5(n: Int) -> Bool {
    if n % 5 == 0 {
        return true
    } else {
        return false
    }
}

func isPrime(n: Int) -> Bool {
    if n >= 2 {
        for number in 2..<n {
            if n % number == 0 {
                return false
            }
        }
        return true
    } else {
        return false
    }
}
