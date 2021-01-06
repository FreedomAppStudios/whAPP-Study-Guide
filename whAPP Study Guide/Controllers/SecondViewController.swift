//
//  SecondViewController.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/11/20.
//

import UIKit

class SecondViewController: UIViewController {
    
    let catos = ["Option 1", "Option 2","Option 3", "Option 4"]
    var chosen = 0
    var count = 0.0
    var stop = 0
    let wheels = [104,30,50,40]
    var holder = 0
    var classy : Any = cat1()
    @IBOutlet weak var wheelImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet var picker: UIPickerView!
    @IBAction func startButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "performSegueToGame", sender: self)
        //performSegue(withIdentifier: "performSegueToGame", sender: self)
    }
    override func viewDidLoad() {
        //picker.dataSource = self
        //picker.delegate = self
        //picker.setValue(UIColor.white, forKey: "textColor")
        let intCat = runTimer()
        chosen = intCat + 1
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "performSegueToGame" {
            if chosen == 1 {
            classy = cat1()
            }
            else if chosen == 2 {
            classy = cat2()
            }
            else if chosen == 3 {
            classy = cat3()
            }
            else {
            classy = cat4()
            }
            let destinationVC = segue.destination as! QuizViewController
            destinationVC.cato = classy
            destinationVC.catNum = chosen
            //}
            
        }
    }
    func runTimer() -> Int {
        count = 0.0
        stop = Int.random(in: 0...3)
        holder = wheels[stop]
        print(stop + 1)
        print(holder)
        print("Run!!!")
        _ = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        return stop
    }
    @objc func fireTimer() {
        //var holder = wheels[stop]
        //var holder = 25
        if holder > 0{
            print(holder)
            wheelImage.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / count))
            count = count + 0.01
            holder-=1
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

