//
//  ViewController.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/11/20.
//

import UIKit
import CLTypingLabel

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    @IBOutlet weak var loginButtonInfo: UIButton!
    @IBOutlet weak var setupButtonInfo: UIButton!
    @IBOutlet weak var guestButtonInfo: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        navigationController!.isNavigationBarHidden = false
    }
    @IBAction func setupButtonPressed(_ sender: Any) {
        navigationController!.isNavigationBarHidden = false
    }
    @IBAction func guestButtonPressed(_ sender: Any) {
        navigationController!.isNavigationBarHidden = false
        isLoggedin = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButtonInfo.layer.cornerRadius = 30
        setupButtonInfo.layer.cornerRadius = 30
        guestButtonInfo.layer.cornerRadius = 30
        
        //titleLabel.text = "ACE AP: World History"
        
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = "ACE AP: World History"
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval:  0.1 * charIndex, repeats: false) {
                (timer) in self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
        
        navigationController!.isNavigationBarHidden = true
        
    }


}

