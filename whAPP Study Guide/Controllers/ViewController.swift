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
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        navigationController!.isNavigationBarHidden = false
    }
    @IBAction func setupButtonPressed(_ sender: Any) {
        navigationController!.isNavigationBarHidden = false
    }
    @IBAction func guestButtonPressed(_ sender: Any) {
        navigationController!.isNavigationBarHidden = false
        isLoggedin = false
        print(isLoggedin)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButtonInfo.layer.cornerRadius = 30
        setupButtonInfo.layer.cornerRadius = 30
        guestButtonInfo.layer.cornerRadius = 30
        titleLabel.text = "ACE AP: World History"
        navigationController!.isNavigationBarHidden = true
        
    }


}

