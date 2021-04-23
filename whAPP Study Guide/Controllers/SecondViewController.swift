//
//  SecondViewController.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/11/20.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var wheelOfTime: UILabel!
    let catos = ["Option 1", "Option 2","Option 3", "Option 4"]
    var chosen = 0
    var count = 0.0
    var stop = 0
    let wheels = [104,30,50,40]
    var holder = 0
    var intCat = 0
    var spiny : CGFloat = 0.0
    var beenClicked = false
    var classy : Any = cat1()
    @IBOutlet weak var wheelImage: UIImageView!
    @IBOutlet weak var buttonID: UIButton!
    
    @IBOutlet weak var spinID: UIButton!
    
    
    @IBOutlet weak var arrow: UIImageView!
    @IBOutlet weak var button1200: UIButton!
    @IBOutlet weak var button1450: UIButton!
    @IBOutlet weak var button1750: UIButton!
    @IBOutlet weak var button1900: UIButton!
    @IBAction func spinButtonPressed(_ sender: Any) {
        
        spin()
        
    }
    @IBAction func button1200Pressed(_ sender: Any) {
        chosen = 1
        performSegue(withIdentifier: "performSegueToGame", sender: self)
    }
    @IBAction func button1450Pressed(_ sender: Any) {
        chosen = 2
        performSegue(withIdentifier: "performSegueToGame", sender: self)
    }
    @IBAction func button1750Pressed(_ sender: Any) {
        chosen = 3
        performSegue(withIdentifier: "performSegueToGame", sender: self)
    }
    @IBAction func button1900Pressed(_ sender: Any) {
        chosen = 4
        performSegue(withIdentifier: "performSegueToGame", sender: self)
    }
    @IBAction func overRidePressed(_ sender: Any) {
        if beenClicked == false {
            UIView.animate(withDuration: 0.2) {
                self.wheelOfTime.font = self.wheelOfTime.font.withSize(24)
                self.wheelOfTime.transform = CGAffineTransform(translationX: -50, y: 0)
                self.wheelImage.transform = CGAffineTransform(translationX: -50, y: 0)
                self.arrow.transform = CGAffineTransform(translationX: -50, y: 0)
                let things = [self.button1200,self.button1450,self.button1750,self.button1900]
                var thingNum = 0
                _ = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { timer in
                    if thingNum < 4 {
                        things[thingNum]?.isHidden = false
                    }
                    thingNum+=1
                }
                
            }
            beenClicked = true
        } else {
            var thingNum = 3
            let things = [button1200,button1450,button1750,button1900]
            _ = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if thingNum > -1 {
                    things[thingNum]?.isHidden = true
                } else {
                    self.wheelOfTime.font = self.wheelOfTime.font.withSize(29)
                }
                thingNum-=1
            }
            UIView.animate(withDuration: 0.2, delay: 1.0) {
                
                
                self.wheelOfTime.transform = CGAffineTransform(translationX: 0, y: 0)
                self.wheelImage.transform = CGAffineTransform(translationX: 0, y: 0)
                self.arrow.transform = CGAffineTransform(translationX: 0, y: 0)
                
                self.beenClicked = false
            }
        }
        
        
    }
    @IBAction func startButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "performSegueToGame", sender: self)
    }
    override func viewDidLoad() {
        button1200.isHidden = true
        button1450.isHidden = true
        button1750.isHidden = true
        button1900.isHidden = true
        
        button1200.layer.cornerRadius = 10
        button1450.layer.cornerRadius = 10
        button1750.layer.cornerRadius = 10
        button1900.layer.cornerRadius = 10
        
        buttonID.layer.cornerRadius = 15
        spinID.layer.cornerRadius = 15
        buttonID.isHidden = true
        buttonID.isEnabled = false
        spinID.titleLabel?.text = "SPIN"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "performSegueToGame" {
            if chosen == 0 {
                chosen = 4
            }
            print(chosen)
            if chosen == 1 {
                classy = cat1()
            }
            else if chosen == 2 {
                classy = cat2()
            }
            else if chosen == 3 {
                classy = cat3()
            }
            else {
                classy = cat4()
            }
            let destinationVC = segue.destination as! QuizViewController
            destinationVC.cato = classy
            destinationVC.catNum = chosen
            //}
            
        }
    }
    func runTimer() -> Int {
        count = 0.0
        stop = Int.random(in: 0...3)
        holder = wheels[stop]
        _ = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        return stop
    }
    @objc func fireTimer() {
        //var holder = wheels[stop]
        //var holder = 25
        if holder > 0{
            wheelImage.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / count))
            count = count + 0.01
            holder-=1
        }
    }
    func spin() {
        buttonID.isHidden = false
        buttonID.isEnabled = true
        spinID.setTitle("SPIN AGAIN", for: UIControl.State.normal)
        wheelImage.rotate360Degrees()
        UIView.animate(withDuration: 2.0, animations: {
            var h = self.genRan()
            if CGFloat(h) == self.spiny {
                h = self.genRan()
            }
            let p = h * .pi
            self.spiny = CGFloat(h)
            self.wheelImage.transform = CGAffineTransform(rotationAngle: CGFloat(p))
        })
    }
    func genRan()->Double {
        let ranDegrees = [0.5,1.0,1.5,2.0]
        let r = Int.random(in: 0...3)
        chosen = r
        let val = ranDegrees[r]
        return val
    }
}
extension UIView {
    func rotate360Degrees(duration: CFTimeInterval = 1.0, completionDelegate: AnyObject? = nil) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(.pi * 2.0)
        rotateAnimation.duration = duration
        
        if let delegate: AnyObject = completionDelegate {
            rotateAnimation.delegate = delegate as? CAAnimationDelegate
        }
        self.layer.add(rotateAnimation, forKey: nil)
    }
}

