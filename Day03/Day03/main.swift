//
//  main.swift
//  Day03
//
//  Created by Hoang Tung on 10/12/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation
//
//// mảng
//
//// khai báo 1 mảng string
//var names: [String] = ["Hoa", "Nam", "Phong"]
//
//// duyệt mảng
//for i in names {
//    print(i)
//}
//
//// duyệt mảng kèm index
//for (index, i) in names.enumerated() {
//    print(index, i)
//}
//
//// In ra phần tử thứ i
//print(names[2])
//
//// thêm phần tử vào mảng
//names.append(contentsOf: ["An", "Phú"])
//print(names)
//
//// thay thế giá trị phần tử trong mảng
//names[1] = "Long"
//print(names)
//
//// xoá phần tử trong mảng
////- xoá phần tử theo index
//names.remove(at: 2)
//print(names)
//
////- xoá tất cả các phần tử
//names.removeAll()
//print(names)
//
////- xoá phần tử đầu tiên
//names = ["Hoa", "Nam", "Phong"]
//names.removeFirst()
//print(names)
////- xoá phần tử cuối cùng
//names = ["Hoa", "Nam", "Phong"]
//names.removeLast()
//print(names)
//// Thêm 1 mảng phần tử
//names += ["Phú", "Tú", "Dương"]
//print(names)
//// Thêm 1 phần tử vào vị trí index
//names.insert("Tùng", at: 3)

//bai_tap()
//replace(array: [1, 2, -1, 4, -3])
//minMax(array: [1, 2, -1, 4, 5])
//second(array: [1, 2, -1, 4, 5])

// dictionary
var dictionaryOne = [String: String]()
var dictionaryTwo: [String: String]

// tạo dictionary 2 phần tử
var airports: [String: String] = ["Nội Bài": "Hà Nội", "Sao Vàng": "Thanh Hoá"]
//print(airports)

// đếm phần tử của dictionary
print(airports.count)
print("--------")

// duyệt dictionary
for item in airports {
    print("Key: \(item.key) - Value: \(item.value)")
}
print("--------")

// duyệt dictionary theo key
for item in airports.keys {
    print("Key: \(item) - Value: \(airports[item])")
}
print("--------")

// duyệt dictionary theo value
for item in airports.values {
    print(item)
}
print("--------")

// thêm phần tử vào dictionary
airports["Sao Vàng 2"] = "Thanh Hoá"
print(airports)
print("--------")

// xoá phần tử của dictionary
//airports.removeAll()
print("--------")

// xoá phần tử theo key
airports.removeValue(forKey: "Sao Vàng 2")
print(airports)
print("--------")

// cập nhật giá trị phần tử (cách 1)
airports.updateValue("xứ Thanh", forKey: "Sao Vàng")
print(airports)
print("--------")
