//
//  File.swift
//  Day01_exercises
//
//  Created by Hoang Tung on 10/6/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation


/*
1, Cho bán kính hình cầu, tính và in ra diện tích, thể tích của hình cầu đó.
Hướng dẫn: S = 4πR 2 và V = (4/3)πR 3
*/


func calculateSphere(){
    print("Input radius:")
    let radius = Float(readLine()!)!
    calculateAreaOfSphere(radius: radius)
    calculateVolumeOfSphere(radius: radius)
}

func calculateAreaOfSphere(radius: Float){
    let area: Float = radius * radius * Float.pi * 4
    print("Area of Sphere: \(area)")
}

func calculateVolumeOfSphere(radius: Float){
    let volume: Float = radius * radius * radius * Float.pi * (4 / 3)
    print("Volume of Sphere: \(volume)")
}
