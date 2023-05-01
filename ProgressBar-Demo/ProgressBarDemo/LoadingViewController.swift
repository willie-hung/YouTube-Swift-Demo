//
//  LoadingViewController.swift
//  ProgressBarDemo
//
//  Created by 洪崧傑 on 2023/4/5.
//

import UIKit

class LoadingViewController: UIViewController {
    @IBOutlet weak var progressBarTitle: UILabel!
    @IBOutlet weak var progressBarImage: UIImageView!
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set Loading View Background
        view.backgroundColor = UIColor.black
        
        // Set Loading View Title
        progressBarTitle.text = "PokeDex"
        progressBarTitle.textColor = UIColor.yellow
        // Add custom font
        // Done
        
        // Set Loading View Image
        // Add a pikachu gif
        // gifLoad.swift file is for loading GIF images
        progressBarImage.loadGif(name: "pikachu-running")
        
        // Set Progress Bar
        progressBar.progressTintColor = UIColor.yellow
        
        // Set a timer to animate the progress bar
        // When the timer finishes, switch to the next view (main view)
        var timer = Timer()
        
        var p: Float = 0.0
        var showNextView: Bool = false
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (timer) in
            p += 0.01
            self.progressBar.progress = p
            
            // When progress bar finishes
            if self.progressBar.progress == 1 && !showNextView {
                // Implement a switch to next view function
                self.switchToMainView()
                showNextView = true
            }
        })
    }
    
    func switchToMainView() {
        performSegue(withIdentifier: "showMain", sender: self)
    }
}
