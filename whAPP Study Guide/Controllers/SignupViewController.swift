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
        self.passwordTextField.delegate = self
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    func saveName() {
        if let user = Auth.auth().currentUser?.email, let nameID = nametextField.text {
            db.collection("nameForUser").addDocument(data: [
                "sender" : user,
                "name" : nameID
            ]) { (error) in
                if let e = error {
                    let _ = e
                }
                else {
                }
                
            }
        }
    }
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        //textField code

        passwordTextField.resignFirstResponder()  //if desired
        performAction()
        return true
    }

    func performAction() {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
