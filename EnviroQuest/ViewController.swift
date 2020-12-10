//
//  ViewController.swift
//  EnviroQuest
//
//  Created by Apple April on 20/11/20.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func screenTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "login", sender: nil)
    }
    var timer: Timer?
    var timeElapsed = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        timeElapsed += 0.1
        if timeElapsed == 3.0 {
          self.performSegue(withIdentifier: "login", sender: nil)
        }
    }
    
    
    
    
    
    
    }


  
