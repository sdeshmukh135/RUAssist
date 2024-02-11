//
//  ViewController.swift
//  RUAssist
//
//  Created by Sara Deshmukh on 2/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func phoneFamily(_ sender: UIButton) {
        if let url = URL(string: "tel://\(6096479833)") {
            UIApplication.shared.open(url, options: [:], completionHandler:nil)
        }
    }
    
    
    @IBAction func phoneDoctor(_ sender: UIButton) {
        if let url = URL(string: "tel://\(6096479833)") {
            UIApplication.shared.open(url, options: [:], completionHandler:nil)
        }
    }
    
    
    @IBAction func phone911(_ sender: UIButton) {
        
        if let url = URL(string: "tel://\(911)") {
            UIApplication.shared.open(url, options: [:], completionHandler:nil)
        }
    }
    
    
}

