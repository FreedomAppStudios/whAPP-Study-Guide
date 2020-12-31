//
//  SecondViewController.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/11/20.
//

import UIKit

class SecondViewController: UIViewController {
    
    let catos = ["Option 1", "Option 2","Option 3", "Option 4"]
    var chosen = "NA"
    var stop = 0
    @IBOutlet weak var wheelImage: UIImageView!
    var count = 0.0
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet var picker: UIPickerView!
    @IBAction func startButtonPressed(_ sender: Any) {
        titleLabel.text = catos[picker.selectedRow(inComponent: 0)]
        chosen = titleLabel.text!
        performSegue(withIdentifier: "performSegueToGame", sender: self)
    }
    override func viewDidLoad() {
        //picker.dataSource = self
        //picker.delegate = self
        //picker.setValue(UIColor.white, forKey: "textColor")
        runTimer()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "performSegueToGame" {
            let destinationVC = segue.destination as! QuizViewController
            let stringVers = chosen
            destinationVC.cato = stringVers
            //}
            
        }
    }
    func runTimer() {
        stop = Int.random(in: 50...250)
        print(stop)
        _ = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    }
    @objc func fireTimer() {
        if stop > 0{
            wheelImage.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / count))
            count = count + 0.01
            stop-=1
        }
    }
}
//extension SecondViewController: UIPickerViewDataSource {
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return catos.count
//    }
//}
//extension SecondViewController: UIPickerViewDelegate {
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return catos[row]
//    }
//}

