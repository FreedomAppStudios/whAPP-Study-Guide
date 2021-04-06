//
//  ViewController.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/11/20.
//

import UIKit
import CLTypingLabel
import UserNotifications
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
        performSegue(withIdentifier: "loginAsGuest", sender: self)
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
        
        // Step 1: Ask for permission
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
        }
        
        // Step 2: Create the notification content
        let content = UNMutableNotificationContent()
        content.title = "Study time!"
        content.body = "Even just a couple of minutes can help you ACE the AP exam!"
        
        // Step 3: Create the notification trigger
        let date = Date().addingTimeInterval(259200)
        
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        // Step 4: Create the request
        
        let uuidString = UUID().uuidString
        
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        // Step 5: Register the request
        center.add(request) { (error) in
            // Check the error parameter and handle any errors
        }

    }


}

