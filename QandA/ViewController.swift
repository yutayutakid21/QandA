//
//  ViewController.swift
//  QandA
//
//  Created by Fujii Yuta on 2020/01/10.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit



/*
 
 ・3問の問題を作成し、回答を2択とし、正答数を最後に表示してください。
 
 
 
 */



class ViewController: UIViewController {
    
    let allQuestion = QuestionBank()
    
    //問題文を表示
    @IBOutlet weak var questionLabel: UILabel!
    //回答１を表示
    @IBOutlet weak var answer1Button: UIButton!
    //回答2を表示
    @IBOutlet weak var answer2Button: UIButton!
    
    //現在の問題数
    var questionNumber = 0
    //選択された回答　回答1なら1、回答2なら2になる
    var pickedAnswer = 0
    //正解数をprintで表示
    var correctAnswerNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //初期に表示される画面の実装
        //UIButtonの表示がおかしい・・・
        questionLabel.text = allQuestion.list[0].questionText
        answer1Button.titleLabel?.text = allQuestion.list[0].answer1
        answer2Button.titleLabel?.text = allQuestion.list[0].answer2
    }
    
    
    @IBAction func answer(_ sender: Any) {
        if (sender as AnyObject).tag == 1 {
            pickedAnswer = 1
        } else if (sender as AnyObject).tag == 2 {
            pickedAnswer = 2
        }
    }
    
    
    //回答を確認する
    func check(){
        
        let correctAnswer = allQuestion.list[0].correctCheck
        
        if correctAnswer == pickedAnswer {
            print("正解")
            correctAnswerNumber = correctAnswerNumber + 1
        } else {
            print("不正解")
        }
    }
    

}

