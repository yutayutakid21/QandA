//
//  Question.swift
//  QandA
//
//  Created by 宏輝 on 10/01/2020.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import Foundation

class Question{
    
    let questionText: String
       let answer1: String
       let answer2: String
       let correctCheck: Bool
       
       
       init(questionText:String, answer1:String, answer2:String, correctOrNot:Bool){
           
           self.questionText = questionText
           self.answer1 = answer1
           self.answer2 = answer2
           correctCheck = correctOrNot

       }
    
    
    
  
    
    
    
}
