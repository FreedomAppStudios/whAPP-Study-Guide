//
//  SecondViewController.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/11/20.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var button1Info: UIButton!
    @IBOutlet weak var button2Info: UIButton!
    @IBOutlet weak var button3Info: UIButton!
    @IBOutlet weak var button4Info: UIButton!
    var btnVal = 0
    @IBAction func button1(_ sender: Any) {
        btnVal = 1
        performSegue(withIdentifier: "performSegueToFrame3", sender: self)
    }
    @IBAction func button2(_ sender: Any) {
        btnVal = 2
        performSegue(withIdentifier: "performSegueToFrame3", sender: self)
    }
    @IBAction func button3(_ sender: Any) {
        btnVal = 3
        performSegue(withIdentifier: "performSegueToFrame3", sender: self)
    }
    @IBAction func button4(_ sender: Any) {
        btnVal = 4
        performSegue(withIdentifier: "performSegueToFrame3", sender: self)
    }
    override func viewDidLoad() {
        performSegue(withIdentifier: "performSegueToFrame3", sender: self)
        super.viewDidLoad()
        button1Info.layer.cornerRadius = 25
        button2Info.layer.cornerRadius = 25
        button3Info.layer.cornerRadius = 25
        button4Info.layer.cornerRadius = 25
        // Do any additional setup after loading the view.
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "performSegueToFrame3" {
            let destinationVC = segue.destination as! QuizViewController
            let stringVers = String(btnVal)
            destinationVC.cato = stringVers
        }
        
    


}
}
