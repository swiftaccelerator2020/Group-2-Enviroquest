//
//  ViewController.swift
//  EnviroQuest
//
//  Created by Apple April on 20/11/20.
//

import UIKit

class ViewController: UIViewController {
    var time: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(update),userInfo: nil, repeats: true)
        }
    
    
    
    @objc func update() {
      time += 0.5
      print(time)
      if time == 20.0 {
        self.performSegue(withIdentifier: "login", sender: nil)
      }
    
    
    }

}
  
