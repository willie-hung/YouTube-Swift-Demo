//
//  ViewController.swift
//  ProgressBarDemo
//
//  Created by 洪崧傑 on 2023/4/5.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var mainText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainText.text = "Hello World!"
    }
}

