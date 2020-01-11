//
//  QuestionData.swift
//  QandA
//
//  Created by 宏輝 on 10/01/2020.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        list.append(Question(questionText: "swiftはiPhone、Androidのどちらのコードが書けるのですか？", answer1: "iPhone", answer2: "Android", correctOrNot: 1))
        list.append(Question(questionText: "コアラが生息している国はどこですか？", answer1: "日本", answer2: "オーストラリア", correctOrNot: 2))
        list.append(Question(questionText: "日本の車ハンドルはどちらですか？", answer1: "右", answer2: "左", correctOrNot: 1))
        
    }
    
    
}
