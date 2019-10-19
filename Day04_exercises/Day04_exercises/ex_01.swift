//
//  ex_01.swift
//  Day04_exercises
//
//  Created by Hoang Tung on 10/17/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

//1, Sắp xếp mảng số nguyên theo chiều tăng dần và giảm dần

// cách ngu si
func minSort(array: [Int]) -> [Int] {
    var result: [Int] = []
    var array2: [Int] = []
    var min: Optional<Int> = nil
    for _ in 1...array.count {
        if min == nil {
            min = soNhoNhat(array: array)
            result.append(min!)
            array2 = array.filter{$0 != min}
        } else {
            min = soNhoNhat(array: array2)
            result.append(min!)
            array2 = array2.filter{$0 != min}
        }
    }
    return result
}

func soNhoNhat(array: [Int]) -> Int {
    if array.count == 1 {
        return array[0]
    }
    var min = array[0]
    for number in array[1...] {
        if number < min {
            min = number
        }
    }
    return min
}

func maxSort(array: [Int]) -> [Int] {
    var result: [Int] = []
    var array2: [Int] = []
    var max: Optional<Int> = nil
    for _ in 1...array.count {
        if max == nil {
            max = soLonNhat(array: array)
            result.append(max!)
            array2 = array.filter{$0 != max}
        } else {
            max = soLonNhat(array: array2)
            result.append(max!)
            array2 = array2.filter{$0 != max}
        }
    }
    return result
}

func soLonNhat(array: [Int]) -> Int {
    if array.count == 1 {
        return array[0]
    }
    var max = array[0]
    for number in array[1...] {
        if number > max {
            max = number
        }
    }
    return max
}

// cách 2
func mergeSort(arr: [Int]) -> [Int] {
    var array = arr
    if array.count > 1 {
        let mid = array.count / 2
        var array1 = Array(array[0..<mid])
        var array2 = Array(array[mid..<array.count])
        array1 = mergeSort(arr: array1)
        array2 = mergeSort(arr: array2)
        var i = 0
        var j = 0
        var k = 0
        while i < array1.count && j < array2.count {
            if array1[i] < array2[j] {
                array[k] = array1[i]
                i += 1
            } else {
                array[k] = array2[j]
                j += 1
            }
            k += 1
        }
        
        while i < array1.count {
            array[k] = array1[i]
            i += 1
            k += 1
        }
        
        while j < array2.count {
            array[k] = array2[j]
            j += 1
            k += 1
        }
    }
    return array
}

func timSort(arr: [Int]) -> [Int] {
    
    func insertSort(arr: [Int], number: Int) -> [Int] {
        var array = arr + [number]
        var i = arr.count - 1
        while i >= 0 {
            if array[i] > number {
                array[i + 1] = array[i]
                array[i] = number
            } else {
                break
            }
            i -= 1
        }
        return array
    }
    
    var array = [arr[0]]
    for i in arr[1...] {
        array = insertSort(arr: array, number: i)
    }
    return array
}
