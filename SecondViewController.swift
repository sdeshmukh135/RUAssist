//
//  SecondViewController.swift
//  RUAssist
//
//  Created by Sara Deshmukh on 2/10/24.
//

import UIKit
import SwiftUI

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contentView = ContentView(viewModel: ChatViewModel())

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            if self.view.window != nil {
                let hostingController = UIHostingController(rootView: contentView)
                self.present(hostingController, animated: true, completion: nil)
            } else {
                print("Error: View controller is still not on screen.")
            }
        }

        
    }
    
    
}

