//
//  ex_05.swift
//  Day04_exercises
//
//  Created by Hoang Tung on 10/18/19.
//  Copyright © 2019 Hoang Tung. All rights reserved.
//

import Foundation

func answerTheQuestion() {
    print("Đâu không phải là một ngôn ngữ lập trình?\n a - Golang\n b - Swift\n c - Ruby\n d - Daily")
    print("Câu trả lời của bạn là:")
    let answer = readLine()!
    let answerLower = answer.lowercased()
    let wrongOptions = ["a", "b", "c"]
    switch answerLower {
    case "d":
        print("d là câu trả lời đúng!")
    case _ where wrongOptions.contains(answerLower):
        print("\(answer) là đáp án sai!")
    default:
        print("Đáp án của bạn không nằm trong các lựa chọn của câu hỏi!")
        answerTheQuestion()
    }
}
