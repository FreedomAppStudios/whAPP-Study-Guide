//
//  BreakdownViewController.swift
//  whAPP Study Guide
//
//  Created by Nick Morris on 1/13/21.
//

import UIKit
import Firebase
class BreakdownViewController: UIViewController {

    var scoreToday = 0
    var questionsAnswered = 0
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBAction func finishedButtonPressed(_ sender: UIBarButtonItem) {
        if Auth.auth().currentUser?.email != nil {
            performSegue(withIdentifier: "doneToHome", sender: self)
        } else {
            navigationController?.popToRootViewController(animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if questionsAnswered == 0 {
            scoreLabel.text = "0%"
        }
        else {
            correctLabel.text = String(scoreToday)
            totalLabel.text = String(questionsAnswered-1)
        }
        correctLabel.text = String(scoreToday)
        totalLabel.text = String(questionsAnswered-1)
        let right = Double(scoreToday)
        let tot = Double(questionsAnswered-1)
        let av : Double = (right/tot) * 100
        var cut = String(av)
        while cut.count > 4 {
            cut.removeLast()
        }
        scoreLabel.text = cut + "%"
    }
    

}
