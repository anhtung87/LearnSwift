//
//  pascalTriangle.swift
//  Day10_exercises
//
//  Created by Hoang Tung on 11/3/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

func printPascalTriangle(_ line: Int) {
    // Tam giác Pascal là tam giác có dạng:
    //      1
    //    1 2 1
    //   1 3 3 1
    //  1 4 6 4 1
    // Các chữ số dòng dưới là tổng của 2 số liền kề ở dòng trên.
    // Các bước thực hiện giải bài toán này như sau:
    
    // Tạo 1 mảng để chứa các dòng của tam giác pascal. Mỗi dòng số được thể bằng 1 mảng với phần tử là số trong dòng đó.
    var pascalArray: [[Int]] = []
    // Sử dụng vòng lặp để duyệt qua từng dòng với biến line là số dòng do người dùng nhập vào. Vòng lặp chạy từ dòng thứ 1 đến dòng thứ line.
    // Xét 2 trường hợp cơ sở:
    // Trường hợp 1: dòng đầu tiên là mảng chỉ có 1 chữ số 1.
    // Trường hợp 2: dòng thứ 2 là mảng có 2 số 1.
    // Vì 2 trường hợp này không cần logic tính toán nên chúng ta sẽ thêm thẳng vào mảng pascalArray.
    // Đối với các trường hợp còn lại, chúng ta có logic như sau:
    // Ngoài 2 phần tử đầu tiên và cuối cùng của mảng là số 1. Phần tử thứ i của mảng sau bằng tổng của phần tử thứ i và thứ i - 1 của mảng trước nó.
    // Do vậy, chúng ta có cách xử lý logic như sau:
    // Tạo 1 mảng lặp lại chữ số 1 với số lần lặp lại bằng số chữ số của dòng đó.
    // Với phần tử thứ i trong dòng, không kể phần tử đầu tiên và phần tử cuối cùng, thay giá trị của phần tử i = tổng giá trị của phần tử thứ i + phần tử thứ i - 1 trong mảng trước đó.
    for i in 1...line {
        // Trường hợp cơ sở 1
        if i == 1 {
            pascalArray.append([1])
        // Trường hợp cơ sở 2
        } else if i == 2 {
            pascalArray.append([1, 1])
        // Các trường hợp còn lại
        } else {
            // Khai báo giá trị của mảng trước đó.
            let lastArray: [Int] = pascalArray.last!
            // Tạo mảng lặp lại số 1 với số lần lặp lại bằng số lượng số trong mảng.
            var array: [Int] = Array(repeating: 1, count: i)
            // Lặp qua từng phần tử thứ i, thay giá trị của phần tử thứ i = tổng giá trị của phần tử thứ i + phần tử thứ i - 1 trong mảng lastArray.
            for index in 1..<(i - 1){
                array[index] = lastArray[index] + lastArray[index - 1]
            }
            // Thêm mảng array đã tính được vào mảng pascalArray để tái sử dụng cho việc tính mảng tiếp theo.
            pascalArray.append(array)
        }
        print(pascalArray.last!)
    }
}
