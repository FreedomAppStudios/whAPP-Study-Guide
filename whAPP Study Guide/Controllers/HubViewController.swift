//
//  HubViewController.swift
//  whAPP Study Guide
//
//  Created by Nick Morris on 12/31/20.
//

import UIKit

class HubViewController: UIViewController {
    
    @IBOutlet weak var testImage: UIImageView!
    var count = 0.0
    var stop = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        runTimer()
        
    }
    func runTimer() {
        stop = Int.random(in: 90...250)
        print(stop)
        _ = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    }
    @objc func fireTimer() {
        if stop > 0{
            testImage.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi / count))
            count = count + 0.01
            stop-=1
        }
    }
    /*    // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
