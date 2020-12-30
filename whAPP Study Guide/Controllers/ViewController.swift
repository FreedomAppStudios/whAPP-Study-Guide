//
//  ViewController.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginButtonInfo: UIButton!
    @IBOutlet weak var setupButtonInfo: UIButton!
    
    @IBAction func loginButtonPressed(_ sender: Any) {
    }
    @IBAction func setupButtonPressed(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButtonInfo.layer.cornerRadius = 30
        setupButtonInfo.layer.cornerRadius = 30
    }


}

