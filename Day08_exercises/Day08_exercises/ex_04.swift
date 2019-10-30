//
//  ex_04.swift
//  Day08_exercises
//
//  Created by Hoang Tung on 10/29/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//Tìm số Amstrong là một số có đặc điểm sau: số đó gồm n chữ số, tổng các lũy thừa bậc n của các chữ số đó và số đó. Ví dụ: 153 = 1^3 + 5^3 + 3^3. Hãy tìm các số Amstrong nhỏ hơn 1000.
func findArmstrong() {
    let armstrongNumberArray: [Int] = Array(1..<1000).filter { isArmstrong($0) }
    print(armstrongNumberArray)
}

func isArmstrong(_ n: Int) -> Bool {
    let numberArray: [Int] = convertIntToArray(n)
    let powerArray: [Int] = numberArray.map { Int(powf(Float($0), Float(numberArray.count))) }
    let totalPower = powerArray.reduce(0, {$0 + $1})
    return totalPower == n
}

func convertIntToArray(_ n: Int) -> [Int] {
    var array: [Int] = []
    var number = n
    while number > 0 {
        array.append(number % 10)
        number = Int(number / 10)
    }
    return array
}
