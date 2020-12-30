//Ryan Was Here
//  QuizViewController.swift
//  whAPP Study Guide
//test for real
//  Created by Nicholas Morris on 12/13/20.
//Nick is here

import UIKit

class QuizViewController: UIViewController {
    var timerTest : Timer?
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
    //Button pressed
    @IBAction func answer1Pressed(_ sender: Any) {
        stopTimer()
        checkRight1()
        setButtons()
        count = 60
        timerRunner()
    }
    @IBAction func answer2Pressed(_ sender: Any) {
        stopTimer()
        checkRight2()
        setButtons()
        count = 60
        timerRunner()
    }
    @IBAction func answer3Pressed(_ sender: Any) {
        stopTimer()
        checkRight3()
        setButtons()
        count = 60
        timerRunner()
    }
    @IBAction func answer4Pressed(_ sender: Any) {
        stopTimer()
        checkRight4()
        setButtons()
        count = 60
        timerRunner()
    }
    //Variables
    var count = 60
    var score = 0
    let seeker = questionDoer()
    var cato = "0"
    
    //view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        //Set up
        btn1Info.layer.cornerRadius = 25
        btn2Info.layer.cornerRadius = 25
        btn3Info.layer.cornerRadius = 25
        btn4Info.layer.cornerRadius = 25
        btn1Info.backgroundColor = .blue
        btn2Info.backgroundColor = .blue
        btn3Info.backgroundColor = .blue
        btn4Info.backgroundColor = .blue
        
        //Setting button text
        setButtons()
        scoreCountLBL.text = "0"
        timerRunner()
        
        
        
        
        
    }
    //btn1 revert
    func  checkRight1() {
        btn1Info.backgroundColor = .red
        perform(#selector(self.correct1), with: nil, afterDelay: 2)
    }
    @objc func correct1() {
        animateBackgroundColor(to: .blue)
    }
    fileprivate func animateBackgroundColor(to color: UIColor) {
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.btn1Info.backgroundColor = color
            
        })
    }
    //btn2 revert
    func  checkRight2() {
        btn2Info.backgroundColor = .red
        perform(#selector(self.correct2), with: nil, afterDelay: 2)
    }
    @objc func correct2() {
        animateBackgroundColor2(to: .blue)
    }
    fileprivate func animateBackgroundColor2(to color: UIColor) {
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.btn2Info.backgroundColor = color
            
        })
    }
    //btn3 revert
    func  checkRight3() {
        btn3Info.backgroundColor = .red
        perform(#selector(self.correct3), with: nil, afterDelay: 2)
    }
    @objc func correct3() {
        animateBackgroundColor3(to: .blue)
    }
    fileprivate func animateBackgroundColor3(to color: UIColor) {
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.btn3Info.backgroundColor = color
            
        })
    }
    //btn4 revert
    func  checkRight4() {
        btn4Info.backgroundColor = .green
        perform(#selector(self.correct4), with: nil, afterDelay: 2)
    }
    @objc func correct4() {
        animateBackgroundColor4(to: .blue)
    }
    fileprivate func animateBackgroundColor4(to color: UIColor) {
        UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.btn4Info.backgroundColor = color
            
        })
    }
    //sets button text
    func setButtons() {
        let random = Int.random(in: 0...3)
        let secondsToDelay = 2.5
        DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
           print("This message is delayed")
            self.btn1Info.setTitle(self.seeker.getWrong1(rando: random), for: UIControl.State.normal)
            self.btn2Info.setTitle(self.seeker.getWrong2(rando: random), for: UIControl.State.normal)
            self.btn3Info.setTitle(self.seeker.getWrong3(rando: random), for: UIControl.State.normal)
            self.btn4Info.setTitle(self.seeker.rightAnswer(rando: random), for: UIControl.State.normal)
            self.questionTTL.text = self.seeker.getQuestions(rando : random)
        }
        
    }
    @objc func updateTimer() {
        if(count >= 0) {
            countDownLBL.text = String(count)
            count-=1
            if count < 20{
                countDownLBL.textColor = .red
            }
        }
        if count == -1 {
            checkRight4()
            setButtons()
            count = count - 1
            countDownLBL.textColor = .black
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
    }
    
    
    
    
}
