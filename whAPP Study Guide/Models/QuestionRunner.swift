//
//  QuestionRunner.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/14/20.
//

import Foundation
 struct cat1 {
    let questions = ["Who was the first US President?","When was America founded?", "What was the first colony?", "What state has the abbreviation 'TX'?"]
    //possible responses
    let wrongAnswer1 = ["Lincoln", "1778", "Delaware V","Idaho"]
    let wrongAnswer2 = ["Obama", "1601", "Idaho","Florida"]
    let wrongAnswer3 = ["Trump", "2020", "New York", "China"]
    //correct answer
    let rightAnswer = ["Washington", "1776", "Virginia","Texas"]
    
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
//new cat
struct cat2 {
    let questions = ["When did man land on the moon?","Who was the first man to land on the moon?", "How far away is the moon?", "What was the first country in space?"]
    //possible responses
    let wrongAnswer1 = ["1965", "Fred Haise", "432,732","United States"]
    let wrongAnswer2 = ["1988", "Buzz Aldrin", "7000 ft","Cuba"]
    let wrongAnswer3 = ["1971", "Eugene Cernan", "1,531,752 mi", "China"]
    //correct answer
    let rightAnswer = ["1969", "Neil Armstrong", "238,900 mi","Russia"]
    
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
//new cat
struct cat3 {
    let questions = ["What is the lightest element?","What subatomic particle has a negative charge?", "What subatomic particle has a positive charge?", "What atom is all life on earth based on?"]
    //possible responses
    let wrongAnswer1 = ["Helium", "Proton", "Neutron","Oxegen"]
    let wrongAnswer2 = ["Oxygen", "Neutron", "Electron","Hydrogen"]
    let wrongAnswer3 = ["Gold", "Quark", "Quark", "Silver"]
    //correct answer
    let rightAnswer = ["Hydrogen", "Electron", "Proton","Carbon"]
    
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
//new cat
struct cat4 {
    let questions = ["What was Shakespeare's first work?","When was Shakespeare born?", "When did Shakespeare die?", "Who killed Macbeth"]
    //possible responses
    let wrongAnswer1 = ["Romeo & Juliet", "January 1564", "May 11 1616","Macbeth"]
    let wrongAnswer2 = ["Much Ado About Nothing", "December 1568", "January 17 1618","Banquo"]
    let wrongAnswer3 = ["Hamlet", "June 1571", "June 1 1617", "King Duncan"]
    //correct answer
    let rightAnswer = ["Venus and Adonis", "April 1564", "April 23 1616","Malcolm III"]
    
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

