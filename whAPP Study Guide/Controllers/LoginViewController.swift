//
//  LoginViewController.swift
//  whAPP Study Guide
//
//  Created by Nick Morris on 12/29/20.
//

import UIKit
import Firebase

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                if let e = error {
                    self!.errorLabel.isHidden = false
                    self!.errorLabel.text = e.localizedDescription
                } else {
                    isLoggedin = true
                    self!.performSegue(withIdentifier: "LoginToHome", sender: self)
                }
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.passwordTextField.delegate = self
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        if view.traitCollection.userInterfaceStyle == UIUserInterfaceStyle.dark {
            //Dark Mode options
            emailTextField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
            passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        } else{
            //Light mode options
            
        }

       //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
       //tap.cancelsTouchesInView = false

       view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
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
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                if let e = error {
                    self!.errorLabel.isHidden = false
                    self!.errorLabel.text = e.localizedDescription
                } else {
                    self!.performSegue(withIdentifier: "LoginToHome", sender: self)
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

