//
//  HomeViewController.swift
//  Environment Quest V1
//
//  Created by Yinjia on 12/11/20.
//

import UIKit


var currentFactCounter = 1
var counter = 10


var facts = ["Every day, American businesses generate enough paper to circle the earth 20 times!", "this is a second fact"]

class HomeViewController: UIViewController {
    @IBOutlet weak var gemsCounterLabel: UILabel!
    @IBOutlet weak var newFactButton: UIButton!
    @IBOutlet weak var newFactLabel: UILabel!
    //will link after auto layout
    @IBOutlet weak var helloLabel: UILabel!
    
    var receivedName = ""
   
    override func viewDidLoad() {
        super.viewDidLoad()
        gemsCounterLabel.text = "Gems: \(counter)"
        newFactButton.layer.cornerRadius = 10
        helloLabel.text = "Hello, \(receivedName)"
        newFactLabel.layer.cornerRadius = 20
        }
    
    //will link after auto layout
    @IBAction func newFactButtonPressed(_ sender: Any) {
        newFactLabel.text = facts[currentFactCounter]
        currentFactCounter += 1
        print("the current count is \(currentFactCounter)")
        if currentFactCounter == facts.count {
            print("reset")
            currentFactCounter = 0
        }
       
    }
    
    
    
  
    //hi
    //and btw
    //there are autolayout problems
    //and so i have decided to start a new project
    //IN CONCLUSION WE NEED TO REDO AUTOLAYOUT AND (ALSO BEST EXCUDE FOR NOT USING GITHUB BECAUSE OUR RECENT REPO GOT AUTOLAYOUT PROBLEMS AHAHAHAHAHAH)
    
    
    
    //OK
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
