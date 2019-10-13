//
//  ex_05.swift
//  Day03_exercises
//
//  Created by Hoang Tung on 10/13/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//5, In một chuỗi cho trước theo thứ tự ngược lại (Ví dụ: Hello in thành olleH)

func reversed(str: String){
    var reversedString = ""
    for char in str {
        reversedString = "\(char)\(reversedString)"
    }
    print(reversedString)
}
