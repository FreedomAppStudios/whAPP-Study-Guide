//
//  QuizViewController.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/13/20.
//

import UIKit

class QuizViewController: UIViewController {
    //Button set ups
    @IBOutlet weak var btn1Info: UIButton!
    @IBOutlet weak var btn2Info: UIButton!
    @IBOutlet weak var btn3Info: UIButton!
    @IBOutlet weak var btn4Info: UIButton!
    //Title / Question
    @IBOutlet weak var questionTTL: UILabel!
    //Button pressed
    @IBAction func answer1Pressed(_ sender: Any) {
        questionTTL.text = "Question 1"
        checkRight1()
    }
    @IBAction func answer2Pressed(_ sender: Any) {
        questionTTL.text = "Question 2"
    }
    @IBAction func answer3Pressed(_ sender: Any) {
        questionTTL.text = "Question 3"
    }
    @IBAction func answer4Pressed(_ sender: Any) {
        questionTTL.text = "Question 4"
    }
    
    var cato = "0"
    override func viewDidLoad() {
        super.viewDidLoad()
        questionTTL.text = cato
        btn1Info.layer.cornerRadius = 25
        btn2Info.layer.cornerRadius = 25
        btn3Info.layer.cornerRadius = 25
        btn4Info.layer.cornerRadius = 25
        btn1Info.backgroundColor = .blue
        btn1Info.backgroundColor = .blue
        btn1Info.backgroundColor = .blue
        btn1Info.backgroundColor = .blue
        
        
    }
    //btn1 revert
    func  checkRight1() {
        btn1Info.backgroundColor = .green
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
        btn2Info.backgroundColor = .green
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
        btn3Info.backgroundColor = .green
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
    
    
    
    
    
}
