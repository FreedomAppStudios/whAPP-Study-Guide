//  QuizViewController.swift
//  whAPP Study Guide
//  Created by Nicholas Morris on 12/13/20.

import UIKit
import Firebase
import GoogleMobileAds

class QuizViewController :UIViewController {
    
    var cato : Any? = nil
    var catNum = 0
    //Variables
    var count = 30
    var score = 0
    var totalAnswered = 0
    var quesCount = 99
    var rightNum = 0
    var timerTest : Timer?
    var globalCount = 0
    var totRight = 0
    let quesTime = 30
    var isPaused = false
    
   //ad Setup
    @IBOutlet weak var bannerView: GADBannerView!
    
    
    //Clock & Score set ups
    @IBOutlet weak var countDownLBL: UILabel!
    @IBOutlet weak var scoreCountLBL: UILabel!
    //Button set ups
    @IBOutlet weak var btn1Info: UIButton!
    @IBOutlet weak var btn2Info: UIButton!
    @IBOutlet weak var btn3Info: UIButton!
    @IBOutlet weak var btn4Info: UIButton!
    //Title / Question
    @IBOutlet weak var questionTTL: UILabel!
    
    //Data Base
    let db = Firestore.firestore()
    
    @IBAction func donePressed(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "finishedQuiz", sender: self)
    }
    //Button pressed
    @IBAction func answer1Pressed(_ sender: Any) {
        if catNum == 1 {
            let btnText = btn1Info.titleLabel!.text
            let new = cat1()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight1()
                updateScore()
            }
            else {
                checkWrong1()
                findRight()
            }
        }
        else if catNum == 2 {
            let btnText = btn1Info.titleLabel!.text
            let new = cat2()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight1()
                updateScore()
            }
            else {
                checkWrong1()
                findRight()
            }
        }
        else if catNum == 3 {
            let btnText = btn1Info.titleLabel!.text
            let new = cat3()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight1()
                updateScore()
            }
            else {
                checkWrong1()
                findRight()
            }
        } else {
            let btnText = btn1Info.titleLabel!.text
            let new = cat4()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight1()
                updateScore()
            }
            else {
                checkWrong1()
                findRight()
            }
        }
        rightNum = setButtons(numOfQues: quesCount)
        count = quesTime
        timerRunner()
    }
    @IBAction func answer2Pressed(_ sender: Any) {
        if catNum == 1 {
            let btnText = btn2Info.titleLabel!.text
            let new = cat1()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight2()
                updateScore()
            }
            else {
                checkWong2()
                findRight()
            }
        }
        else if catNum == 2 {
            let btnText = btn2Info.titleLabel!.text
            let new = cat2()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight2()
                updateScore()
            }
            else {
                checkWong2()
                findRight()
            }
        }
        else if catNum == 3 {
            let btnText = btn2Info.titleLabel!.text
            let new = cat3()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight2()
                updateScore()
            }
            else {
                checkWong2()
                findRight()
            }
        } else {
            let btnText = btn2Info.titleLabel!.text
            let new = cat4()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight2()
                updateScore()
            }
            else {
                checkWong2()
                findRight()
            }
        }
        rightNum = setButtons(numOfQues: quesCount)
        count = quesTime
        timerRunner()
    }
    @IBAction func answer3Pressed(_ sender: Any) {
        if catNum == 1 {
            let btnText = btn3Info.titleLabel!.text
            let new = cat1()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight3()
                updateScore()
            }
            else {
                checkWrong3()
                findRight()
            }
        }
        else if catNum == 2 {
            let btnText = btn3Info.titleLabel!.text
            let new = cat2()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight3()
                updateScore()
            }
            else {
                checkWrong3()
                findRight()
            }
        }
        else if catNum == 3 {
            let btnText = btn3Info.titleLabel!.text
            let new = cat3()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight3()
                updateScore()
            }
            else {
                checkWrong3()
                findRight()
            }
        } else {
            let btnText = btn3Info.titleLabel!.text
            let new = cat4()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight3()
                updateScore()
            }
            else {
                checkWrong3()
                findRight()
            }
        }
        rightNum = setButtons(numOfQues: quesCount)
        count = quesTime
        timerRunner()
    }
    @IBAction func answer4Pressed(_ sender: Any) {
        if catNum == 1 {
            let btnText = btn4Info.titleLabel!.text
            let new = cat1()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight4()
                updateScore()
            }
            else {
                checkWrong4()
                findRight()
            }
        }
        else if catNum == 2 {
            let btnText = btn4Info.titleLabel!.text
            let new = cat2()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight4()
                updateScore()
            }
            else {
                checkWrong4()
                findRight()
            }
        }
        else if catNum == 3 {
            let btnText = btn4Info.titleLabel!.text
            let new = cat3()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight4()
                updateScore()
            }
            else {
                checkWrong4()
                findRight()
            }
        } else {
            let btnText = btn4Info.titleLabel!.text
            let new = cat4()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight4()
                updateScore()
            }
            else {
                checkWrong4()
                findRight()
            }
        }
        rightNum = setButtons(numOfQues: quesCount)
        count = quesTime
        timerRunner()
    }
    
    
    
    
    @IBOutlet weak var pausePlayData: UIBarButtonItem!
    //view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var msg = ""
        //Ad set ups
        bannerView.adUnitID = "ca-app-pub-3032616980524090/3001178995"
        //Test ad = ca-app-pub-3940256099942544/2934735716
        //real key = ca-app-pub-3032616980524090/3001178995
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        if catNum == 1 {
            msg = "Period: 1200-1450"
        } else if catNum == 2 {
            msg = "Period: 1450-1750"
        } else if catNum == 3 {
            msg = "Period: 1750-1900"
        } else if catNum == 4 {
            msg = "Period: 1900-2000"
        }
        
        self.title = msg
        
        //Var update
        //Button set up
        btn1Info.layer.cornerRadius = 25
        btn2Info.layer.cornerRadius = 25
        btn3Info.layer.cornerRadius = 25
        btn4Info.layer.cornerRadius = 25
        btn1Info.backgroundColor = .white
        btn2Info.backgroundColor = .white
        btn3Info.backgroundColor = .white
        btn4Info.backgroundColor = .white
        
        btn1Info.titleLabel?.minimumScaleFactor = 0.5
        btn1Info.titleLabel?.numberOfLines = 0   //<-- Or to desired number of lines
        btn1Info.titleLabel?.adjustsFontSizeToFitWidth = true
        
        btn2Info.titleLabel?.minimumScaleFactor = 0.5
        btn2Info.titleLabel?.numberOfLines = 0   //<-- Or to desired number of lines
        btn2Info.titleLabel?.adjustsFontSizeToFitWidth = true
        
        btn3Info.titleLabel?.minimumScaleFactor = 0.5
        btn3Info.titleLabel?.numberOfLines = 0   //<-- Or to desired number of lines
        btn3Info.titleLabel?.adjustsFontSizeToFitWidth = true
        
        btn4Info.titleLabel?.minimumScaleFactor = 0.5
        btn4Info.titleLabel?.numberOfLines = 0   //<-- Or to desired number of lines
        btn4Info.titleLabel?.adjustsFontSizeToFitWidth = true
        
        //Setting button text
        rightNum = setButtons(numOfQues: quesCount)
        if Auth.auth().currentUser?.email != nil {
            loadGlobalQuestionCount()
        }
        
        
        
        
        
    }
    //btn1 correct
    func  checkRight1() {
        btn1Info.backgroundColor = .green
        perform(#selector(self.correct1), with: nil, afterDelay: 2)
    }
    @objc func correct1() {
        animateBackgroundColorRight(to: .white)
    }
    fileprivate func animateBackgroundColorRight(to color: UIColor) {
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.btn1Info.backgroundColor = color
            
        })
    }
    @IBAction func pausePressed(_ sender: Any) {
        pausePlay()
    }
    //btn1 wrong
    func  checkWrong1() {
        btn1Info.backgroundColor = .red
        perform(#selector(self.correct1), with: nil, afterDelay: 2)
    }
    @objc func wrong1() {
        animateBackgroundColorWrong(to: .white)
    }
    
    fileprivate func animateBackgroundColorWrong(to color: UIColor) {
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.btn1Info.backgroundColor = color
            
        })
    }
    
    
    
    
    //btn2 right
    func  checkRight2() {
        btn2Info.backgroundColor = .green
        perform(#selector(self.correct2), with: nil, afterDelay: 2)
    }
    @objc func correct2() {
        animateBackgroundColor2Right(to: .white)
    }
    fileprivate func animateBackgroundColor2Right(to color: UIColor) {
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.btn2Info.backgroundColor = color
            
        })
    }
    //btn2 wrong
    func  checkWong2() {
        btn2Info.backgroundColor = .red
        perform(#selector(self.correct2), with: nil, afterDelay: 2)
    }
    @objc func wrong2() {
        animateBackgroundColor2Wrong(to: .white)
    }
    fileprivate func animateBackgroundColor2Wrong(to color: UIColor) {
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.btn2Info.backgroundColor = color
            
        })
    }
    
    
    //btn3 right
    func  checkRight3() {
        btn3Info.backgroundColor = .green
        perform(#selector(self.correct3), with: nil, afterDelay: 2)
    }
    @objc func correct3() {
        animateBackgroundColor3(to: .white)
    }
    fileprivate func animateBackgroundColor3(to color: UIColor) {
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.btn3Info.backgroundColor = color
            
        })
    }
    
    //btn3 wrong
    func  checkWrong3() {
        btn3Info.backgroundColor = .red
        perform(#selector(self.wrong3), with: nil, afterDelay: 2)
    }
    @objc func wrong3() {
        animateBackgroundColor3Wrong(to: .white)
    }
    fileprivate func animateBackgroundColor3Wrong(to color: UIColor) {
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.btn3Info.backgroundColor = color
            
        })
    }
    
    //btn4 right
    func  checkRight4() {
        btn4Info.backgroundColor = .green
        perform(#selector(self.correct4), with: nil, afterDelay: 2)
    }
    @objc func correct4() {
        animateBackgroundColor4(to: .white)
    }
    fileprivate func animateBackgroundColor4(to color: UIColor) {
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.btn4Info.backgroundColor = color
            
        })
    }
    //btn4 wrong
    func  checkWrong4() {
        btn4Info.backgroundColor = .red
        perform(#selector(self.wrong4), with: nil, afterDelay: 2)
    }
    @objc func wrong4() {
        animateBackgroundColor4wrong(to: .white)
    }
    fileprivate func animateBackgroundColor4wrong(to color: UIColor) {
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.btn4Info.backgroundColor = color
            
        })
    }
    //sets button text
    func setButtons(numOfQues : Int) -> Int {
        totalAnswered = totalAnswered + 1
        if Auth.auth().currentUser?.email != nil {
            globalCount+=1
            updateGlobalQuestionCount()
            loadGlobalQuestionCount()
        }
        if isPaused == true {
            pausePlay()
        } else {
            stopTimer()
        }
        countDownLBL.textColor = .white
        let random = Int.random(in: 0...quesCount)
        let secondsToDelay = 1.5
        DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
            let order = Int.random(in: 0...3)
            //order generator
            
            
            
            //Cat 1
            if self.catNum == 1 {
                if let refresh = self.cato as? cat1 {
                    if order == 0 {
                        self.btn1Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn2Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn3Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn4Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                    //2341
                    if order == 1 {
                        self.btn2Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn3Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn4Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn1Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                    //3412
                    if order == 2 {
                        self.btn3Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn4Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn1Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn2Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                    //4123
                    if order == 3 {
                        self.btn4Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn1Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn2Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn3Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                }
            }
            
            //Cat 2
            if self.catNum == 2 {
                if let refresh = self.cato as? cat2 {
                    if order == 0 {
                        self.btn1Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn2Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn3Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn4Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                    //2341
                    if order == 1 {
                        self.btn2Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn3Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn4Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn1Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                    //3412
                    if order == 2 {
                        self.btn3Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn4Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn1Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn2Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                    //4123
                    if order == 3 {
                        self.btn4Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn1Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn2Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn3Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                }
            }
            //Cat 3
            if self.catNum == 3 {
                if let refresh = self.cato as? cat3 {
                    if order == 0 {
                        self.btn1Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn2Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn3Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn4Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                    //2341
                    if order == 1 {
                        self.btn2Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn3Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn4Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn1Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                    //3412
                    if order == 2 {
                        self.btn3Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn4Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn1Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn2Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                    //4123
                    if order == 3 {
                        self.btn4Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn1Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn2Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn3Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                }
            }
            //Cat 4
            if self.catNum == 4 {
                if let refresh = self.cato as? cat4 {
                    if order == 0 {
                        self.btn1Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn2Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn3Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn4Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                    //2341
                    if order == 1 {
                        self.btn2Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn3Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn4Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn1Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                    //3412
                    if order == 2 {
                        self.btn3Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn4Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn1Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn2Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                    //4123
                    if order == 3 {
                        self.btn4Info.setTitle(refresh.getWrong1(rando: random), for: UIControl.State.normal)
                        self.btn1Info.setTitle(refresh.getWrong2(rando: random), for: UIControl.State.normal)
                        self.btn2Info.setTitle(refresh.getWrong3(rando: random), for: UIControl.State.normal)
                        self.btn3Info.setTitle(refresh.rightAnswer(rando: random), for: UIControl.State.normal)
                        self.questionTTL.text = refresh.getQuestions(rando : random)
                    }
                }
            }
            //self.timerRunner()
        }
        count = quesTime
        timerRunner()
        return random
    }
    @objc func updateTimer() {
        if(count >= 0) {
            countDownLBL.text = String(count)
            count-=1
            if count < 10{
                countDownLBL.textColor = .red
            }
        }
        if count == -1 {
            findRight()
            rightNum = setButtons(numOfQues: quesCount)
            countDownLBL.textColor = .white
        }
    }
    func pausePlay() {
        if isPaused == false {
            timerTest?.invalidate()
            timerTest = nil
            pausePlayData.image = UIImage(systemName: "play.fill")
            isPaused = true
            
        } else {
            timerRunner()
            isPaused = false
            pausePlayData.image = UIImage(systemName: "pause.fill")
        }
    }

    func timerRunner() {
        guard timerTest == nil else { return }
        timerTest = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(updateTimer),
            userInfo: nil, repeats: true)
    }
    func stopTimer() {
        timerTest?.invalidate()
        timerTest = nil
        findRight()
    }
    func updateScore() {
        score = score + 1
        totRight = totRight + 1
        let strScore = String(score)
        scoreCountLBL.text = "SCORE: " + strScore
    }
    func findRight() {
        if catNum == 1 {
            //Button 1
            let btnText = btn1Info.titleLabel!.text
            let new = cat1()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight1()
            }
            //Button 2
            let btnText2 = btn2Info.titleLabel!.text
            let isEqual2 = (right == btnText2)
            if isEqual2 == true {
                checkRight2()
            }
            //Button 3
            let btnText3 = btn3Info.titleLabel!.text
            let isEqual3 = (right == btnText3)
            if isEqual3 == true {
                checkRight3()
            }
            //Button 4
            let btnText4 = btn4Info.titleLabel!.text
            let isEqual4 = (right == btnText4)
            if isEqual4 == true {
                checkRight4()
            }
        }
        if catNum == 2 {
            //Button 1
            let btnText = btn1Info.titleLabel!.text
            let new = cat2()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight1()
            }
            //Button 2
            let btnText2 = btn2Info.titleLabel!.text
            let isEqual2 = (right == btnText2)
            if isEqual2 == true {
                checkRight2()
            }
            //Button 3
            let btnText3 = btn3Info.titleLabel!.text
            let isEqual3 = (right == btnText3)
            if isEqual3 == true {
                checkRight3()
            }
            //Button 4
            let btnText4 = btn4Info.titleLabel!.text
            let isEqual4 = (right == btnText4)
            if isEqual4 == true {
                checkRight4()
            }
        }
        if catNum == 3 {
            //Button 1
            let btnText = btn1Info.titleLabel!.text
            let new = cat3()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight1()
            }
            //Button 2
            let btnText2 = btn2Info.titleLabel!.text
            let isEqual2 = (right == btnText2)
            if isEqual2 == true {
                checkRight2()
            }
            //Button 3
            let btnText3 = btn3Info.titleLabel!.text
            let isEqual3 = (right == btnText3)
            if isEqual3 == true {
                checkRight3()
            }
            //Button 4
            let btnText4 = btn4Info.titleLabel!.text
            let isEqual4 = (right == btnText4)
            if isEqual4 == true {
                checkRight4()
            }
        }
        if catNum == 4 {
            //Button 1
            let btnText = btn1Info.titleLabel!.text
            let new = cat4()
            let right = new.rightAnswer(rando : rightNum)
            let isEqual = (right == btnText)
            if isEqual == true {
                checkRight1()
            }
            //Button 2
            let btnText2 = btn2Info.titleLabel!.text
            let isEqual2 = (right == btnText2)
            if isEqual2 == true {
                checkRight2()
            }
            //Button 3
            let btnText3 = btn3Info.titleLabel!.text
            let isEqual3 = (right == btnText3)
            if isEqual3 == true {
                checkRight3()
            }
            //Button 4
            let btnText4 = btn4Info.titleLabel!.text
            let isEqual4 = (right == btnText4)
            if isEqual4 == true {
                checkRight4()
            }
        }
        count = 60
    }
    func loadGlobalQuestionCount(){
        if isLoggedin == true {
            var max = 0
            db.collection("scoreForDataBase").getDocuments { (querySnapshot, error) in
                if let e = error {
                    let _ = e
                } else {
                    if let snapshotDocuments = querySnapshot?.documents {
                        for doc in snapshotDocuments {
                            let data = doc.data()
                            if let chef = data["body"] as? Int,
                               let userID = data["sender"] as? String,
                               let totalNumRight = data["totalRight"] as? Int{
                                let currentID = Auth.auth().currentUser?.email
                                let isEqual = (userID == currentID)
                                if isEqual == true {
                                    if chef > max {
                                        max = chef
                                        self.totRight = totalNumRight
                                    }
                                }
                            }
                            
                        }
                        self.globalCount = max
                    }
                }
            }
        }
        
    }
    func updateGlobalQuestionCount() {
        if isLoggedin == true {
            let globalQuestionsDB = globalCount
            if let user = Auth.auth().currentUser?.email {
                db.collection("scoreForDataBase").addDocument(data: [
                    "sender" : user,
                    "body" : globalQuestionsDB,
                    "totalRight" : totRight
                ]) { (error) in
                    if let e = error {
                        let _ = e
                    }
                    else {
                        //
                    }
                    
                }
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "finishedQuiz" {
            let nextVC = segue.destination as! BreakdownViewController
            nextVC.scoreToday = score
            nextVC.questionsAnswered = totalAnswered
            
            
        }
    }
}

