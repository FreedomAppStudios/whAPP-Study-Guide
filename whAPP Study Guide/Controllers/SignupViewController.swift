//
//  SignupViewController.swift
//  whAPP Study Guide
//
//  Created by Nick Morris on 12/29/20.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var goButtonPressed: UIButton!
    @IBAction func goButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "RegisterToHome", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
