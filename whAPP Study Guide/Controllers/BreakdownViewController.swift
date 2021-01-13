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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Questions right: \(scoreToday)"
        print("Questions right: \(scoreToday)")
        print("Total questions: \(questionsAnswered)")
    }
    @IBAction func test(_ sender: Any) {
        print("Questions right: \(scoreToday)")
        print("Total questions: \(questionsAnswered)")
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
