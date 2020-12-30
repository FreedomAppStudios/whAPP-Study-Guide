//
//  SecondViewController.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/11/20.
//

import UIKit

class SecondViewController: UIViewController {
    
    let catos = ["Option 1", "Option 2","Option 3", "Option 4"]
    let chosen = "NA"
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet var picker: UIPickerView!
    @IBAction func startButtonPressed(_ sender: Any) {
        titleLabel.text = catos[picker.selectedRow(inComponent: 0)]
        //shouldPerformSegue(withIdentifier: "performSegueToGame", sender: self)
    }
    override func viewDidLoad() {
        picker.dataSource = self
        picker.delegate = self
        picker.setValue(UIColor.white, forKey: "textColor")
    }
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //if segue.identifier == "performSegueToGame" {
            //let destinationVC = segue.destination as! QuizViewController
            //let stringVers = String(btnVal)
            //destinationVC.cato = stringVers
        //}
        
    }
    
extension SecondViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return catos.count
    }
}
extension SecondViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return catos[row]
    }
}
