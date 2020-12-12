//
//  ViewController.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblLabel: UILabel!
    @IBAction func btnStart(_ sender: Any) {
        performSegue(withIdentifier: "performSegueToFrame2", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

