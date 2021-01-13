//
//  SignupViewController.swift
//  whAPP Study Guide
//
//  Created by Nick Morris on 12/29/20.
//

import UIKit
import Firebase

class SignupViewController: UIViewController, UITextFieldDelegate {
    
    let db = Firestore.firestore()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var nametextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var goButtonPressed: UIButton!
    
    @IBAction func goButtonAction(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    self.errorLabel.isHidden = false
                    self.errorLabel.text = e.localizedDescription
                }
                else {
                    self.saveName()
                    self.performSegue(withIdentifier: "RegisterToHome", sender: self)
                }
            }
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return passwordTextField.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func saveName() {
        if let user = Auth.auth().currentUser?.email, let nameID = nametextField.text {
            print(user)
            db.collection("nameForUser").addDocument(data: [
                "sender" : user,
                "name" : nameID
            ]) { (error) in
                if let e = error {
                    print("there was an issue saving to FireStore + \(e)")
                }
                else {
                    print("succesfully saved data")
                }
                
            }
        }
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
