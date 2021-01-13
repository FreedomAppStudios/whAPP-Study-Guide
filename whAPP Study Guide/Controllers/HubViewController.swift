//
//  HubViewController.swift
//  whAPP Study Guide
//
//  Created by Nick Morris on 12/31/20.
//

import UIKit
import Firebase

class HubViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var totalScoreLabel: UILabel!
    @IBOutlet weak var averageScoreLabel: UILabel!
    
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
    let db = Firestore.firestore()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        //load total score
        loadGlobalQuestionCount()
    }
        /*    // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    func loadGlobalQuestionCount(){
        var max = 0
        db.collection("scoreForDataBase").addSnapshotListener { (querySnapshot, error) in
            if let e = error {
                print("there was an issue retrieving data from Firestore \(e)")
            } else {
                if let snapshotDocuments = querySnapshot?.documents {
                    for doc in snapshotDocuments {
                        let data = doc.data()
                        if let chef = data["body"] as? Int, let userID = data["sender"] as? String {
                            //print(chef)
                            //print(userEmail)
                            let currentID = Auth.auth().currentUser?.email
                            let isEqual = (userID == currentID)
                            if isEqual == true {
                                if chef > max {
                                    max = chef
                                }
                            }
                        }
                        
                    }
                    self.totalScoreLabel.text = String(max)
                }
            }
        }
    }
}
