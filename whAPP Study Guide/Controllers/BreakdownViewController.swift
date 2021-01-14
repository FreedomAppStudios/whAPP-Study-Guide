//
//  BreakdownViewController.swift
//  whAPP Study Guide
//
//  Created by Nick Morris on 1/13/21.
//

import UIKit

class BreakdownViewController: UIViewController {

    var scoreToday = 0
    var questionsAnswered = 0
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        correctLabel.text = String(scoreToday)
        totalLabel.text = String(questionsAnswered-1)
        let right = Double(scoreToday)
        let tot = Double(questionsAnswered-1)
        let av : Double = (right/tot) * 100
        print(av)
        scoreLabel.text = String(av) + "%"
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
