//
//  HubViewController.swift
//  whAPP Study Guide
//
//  Created by Nick Morris on 12/31/20.
//

import UIKit
import Firebase

class HubViewController: UIViewController {
    

    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
    let firebaseAuth = Auth.auth()
    do {
      try firebaseAuth.signOut()
        navigationController?.popToRootViewController(animated: true)
    } catch let signOutError as NSError {
      print ("Error signing out: %@", signOutError)
    }
    
    }
    var count = 0.0
    var stop = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        
    }
        /*    // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
