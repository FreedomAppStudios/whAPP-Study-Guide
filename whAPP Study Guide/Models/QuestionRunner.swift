//
//  QuestionRunner.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/14/20.
//

import Foundation
struct questionDoer {
    //questions
    let questions = ["Who was the first US President?","When was America founded?", "Who is the coolest person ever?", "What state has the abbreviation 'TX'?"]
    //possible responses
    let wrongAnswer1 = ["Lincoln", "1778", "Ryan V","Idaho"]
    let wrongAnswer2 = ["Obama", "1601", "AJ A","Florida"]
    let wrongAnswer3 = ["Trump", "2020", "Ryan B", "China"]
    //correct answer
    let rightAnswer = ["Washington", "1776", "Nick M","Texas"]
    
    //Get's questions that correspond to random question number
    func getWrong1(rando : Int) -> String {
        return wrongAnswer1[rando]
    }
    func getWrong2(rando : Int) -> String {
        return wrongAnswer2[rando]
    }
    func getWrong3(rando : Int) -> String {
        return wrongAnswer3[rando]
    }
    func rightAnswer(rando : Int) -> String {
        return rightAnswer[rando]
    }
    func getQuestions(rando : Int) -> String {
        return questions[rando]
    }
}
