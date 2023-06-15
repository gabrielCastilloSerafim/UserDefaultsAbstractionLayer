//
//  ViewController.swift
//  UserDefaultsAbstractionLayer
//
//  Created by Gabriel Castillo Serafim on 15/6/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if AppSingleton.shared.storage.lastAppMode == 0 {
            
            view.backgroundColor = .red
            AppSingleton.shared.storage.lastAppMode = 1
            
        } else {
            
            view.backgroundColor = .cyan
            AppSingleton.shared.storage.lastAppMode = 0
        }
    }

}

