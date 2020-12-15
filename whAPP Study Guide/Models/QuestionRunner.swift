//
//  QuestionRunner.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/14/20.
//

import Foundation
struct questionDoer {
    //questions
    let questions = ["question 1","question 2", "question 3"]
    //possible responses
    let wrongAnswer1 = ["wrong answer1 1", "wrong answer1 2", "wrong answer1 3"]
    let wrongAnswer2 = ["wrong answer2 1", "wrong answer2 2", "wrong answer2 3"]
    let wrongAnswer3 = ["wrong answer3 1", "wrong answer3 2", "wrong answer3 3"]
    //correct answer
    let rightAnswer = ["right answer 1", "right answer 2", "right answer 3"]
    
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
