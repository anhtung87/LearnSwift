//
//  ex_01.swift
//  Day08_exercises
//
//  Created by Hoang Tung on 10/29/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation
//Sắp xếp mảng giảm dần sử dụng hàm sort()

func sortReversed(array: [Float]) -> [Float] {
    return array.sorted(by: {$0 >= $1})
}
