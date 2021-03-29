//
//  QuestionRunner.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/14/20.
// Ryan Virkar

import Foundation
var isLoggedin = true
 struct cat1 { //America
    // 1200-1450
    let questions = ["Which of the following states had the least amount of influence from Confucianism?","What idea about human history does disease contradict?","Which of the following did not bring disease or facilitate the spread of disease?", "Soldiers brought disease with them when fighting in wars Athens faced a plague that came as a result of the Peloponnesian WarThe Roman Empire experienced a population decline as a result of disease that came from trade. These occurrences explain...", "The black death spread quickly across Afro-Eurasia through...", "What was the largest historical impact of the Great Dying that came with the Columbian Exchange?", "Which of the following gave Chinese Dynasties the right to rule?", "What is the significance of Yin-Yang?"]
    //possible responses
    let wrongAnswer1 = ["Japan","Primary sources are not great sources for understanding the effects of disease", "The tropical environment that early humans lived in", "How the Roman Empire fell", "The environment", "It ended the Mongol Empire", "Dynastic Right", "Two different dynasties should rule China together"]
    let wrongAnswer2 = ["Vietnam", "Many events and processes in history are a result of disease","The domestication of animals", "Why war and not trade facilitates the spread of disease", "War", " It killed 90 percent of the European population", "Totem of Buddha", "Daoism should be banned in China"]
    let wrongAnswer3 = ["Korea", "Events and processes in history are often caused by trade and war between empires.","The development of river valley civilizations", "How the Mongols used a disease to conquer their opponents", "Fleas", "It caused more human suffering than the Black Death", "Confucian Script", "Opposite ideas cannot Coexist with one another" ]
    //correct answer
    let rightAnswer = ["India", "Events and processes in history are the result of actions by humans", "Humans migrating to arid zones", "How war and trade facilitated the spread of disease", "Trade Routes", "It is a major cause of European dominance in modern history", "Mandate of Heaven", "Opposite ideas can complement each other"]
    
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
// 1450-1700
struct cat2 { //Space
    let questions = ["Which of the following best explains the impact on the variation of species of plants and animals by region in the world as a result of the Columbian exchange?", "What was an impact of the revolutionary effect of pigs in the Americas?", "What was the impact of oxen in the Americas?", "Why did the Columbian Exchange have such a negative impact on the environment?", "What is the one foreign state that was allowed to trade with the Japanese?", "What was the main advantage European colonists have over the native americans?", "What is the name of the reformation in the Catholic Church during this time period?", "What is the name of the first British joint-stock company?"]
    //possible responses
    let wrongAnswer1 = ["There was an increase in species variation between regions throughout the world", "The quick reproductive ability of pigs led to Europeans coming to the Americas to use pigs for a ritual sacrifice", "Oxen provided the people in the Americas with an abundance of food that caused famines to be a rare occurrence", "The Columbian Exchange led to a massive population decline in the Old World", "French", "Food", "Lutheran Reformation", "VOC"]
    let wrongAnswer2 = ["There was an increase in species variation between Afro-Eurasian regions but a decrease in species variation between regions in the Americas", "The population increase of pigs in the Americas diminished the use of oxen in the Americas", "Oxen provided the native people of the Americas with a way to hunt leading to a more nomadic lifestyle for natives", "The Columbian Exchange was responsible for the spread of the Black Death", "British", "Knowledge of the terrain", "Christian Reformation", "British West India Company"]
    let wrongAnswer3 = ["There was a decrease in species variation between Afro-Eurasian regions but an increase in species variation between the regions in the Americas", "The slow reproduction of pigs caused Europeans in the Americas to leave because of the lack of food", "Oxen caused the death of over 50 percent of the Native Population in the Americas", "The Columbian Exchange exposed the native americans to horses which caused them to move away from an agricultural lifestyle", "Spanish", "Horses", "The Great Schism", "British American Company"]
    //correct answer
    let rightAnswer = ["There was a drastic decrease in species variation between regions throughout the world", "The quick reproductive ability of pigs led to Europeans coming to the Americas since there was rarely a famine as a result of the large numbers of pigs", "Oxen were able to provide quicker and more efficient transportation as well as cultivate more land for crops", "The Columbian Exchange caused the extinction of many species of plants and animals", "Dutch", "Disease", "Protestant Reformation","British East India Company"]
    
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
//1750-1900
struct cat3 { //Chemistry
    let questions = ["What is the term used to refer to Japan's Industrialization?", "Which of the following groups lead to the Industrialization in Japan?", "Which of the following is not a similarity between the Russian and Japanese Industrial Revolution?", "Where did Industrialization first begin?", "Why did Japan make the decision to Industrialize?", "How did Enlightenment thinkers view slavery?", "All of the following movements were prominent in the period between 1750-1900 except...", "In regard to women’s rights, Enlightenment thinkers.."]
    //possible responses
    let wrongAnswer1 = ["Isolated Industrialization", "Samurai", "Industrializing later than many other nation-states", "Japan", "To help there lagging economy", "Negatively as slavery was expensive to maintain", "Nationalism", "Prosecuted women for protesting for their rights"]
    let wrongAnswer2 = ["Aggressive Industrialization", "Peasant Population", "Utilized foreign influence to begin Industrialization", "America", "To defeat China in the Opium Wars", "Positively as slavery allowed for increased economic growth", "Feminism", "Banned women from attending universities", ]
    let wrongAnswer3 = ["Imperial Industrialization", "Tokugawa Shoganate", "Government Sponsored Industrialization", "Russia", "To begin colonization in the Americas", "Positively as slavery allowed for more specialization of labor", "Abolitionist", "Professed Women’s superiority over men"]
    //correct answer
    let rightAnswer = ["Defensive Industrialization", "Meiji Restoration", "Defensive Industrialization", "Britain", "To keep themselves from being conquered or losing economic independence", "Negatively as they felt slavery obstructed man’s natural rights", "Protestant Reformation", "Worked to break down longstanding sexist prejudices"]
    
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
//1900-2000
struct cat4 { //Shakespeare 
    let questions = ["Between 1900 and 1950, European prominence on the global stage…", "All of the following were members of the triple entente except….", "All of the following were members of the triple alliance except….", "The Great War was most likely set off by series of events following the assination of…", "The Archduke was assassinated by a…", "Russia sought to do what in regards to slavic people? ", "Serbia’s main tie to its involvement in the Triple Entente was what?", "Serbia was a…",]
    //possible responses
    let wrongAnswer1 = ["Rose to its highest level yet", "Britain", "Germany", "British prime minister David Lloyd George", "French nationalist", "Eliminate them because they felt they were an inferior people", "France", "Very large nation"]
    let wrongAnswer2 = ["Maintained its 19th century status", "France", "Italy", "United States president Woodrow Wilson", "British special forces", "Take over their countries because they felt all Slovaks should be governed by the the Russians", "Britain", "Average sized nation"]
    let wrongAnswer3 = ["Collapsed completely and caused the downfall of the European nations", "Russia", "Austro-Hungarian Empire ", "Germany chancellor Theobald von Bethmann-Hollweg", "Russian spy", "Build imbalanced alliances with them as Russia was an impoverished and underdeveloped nation", "Germany", "Russian republic"]
    //correct answer
    let rightAnswer = ["Began to dwindle", "America", "Japan", "Austro-Hungarian Archduke Franz Ferdinand", "Serbian nationalist", "Protect them because they were of their own kind", "Russia", "Very small nation"]
    
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

