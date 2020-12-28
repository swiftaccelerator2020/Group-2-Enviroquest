//
//  SettingsViewController.swift
//  EnviroQuest
//
//  Created by Apple April on 21/12/20.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsImageView: UIImageView!
    @IBOutlet weak var settingsHelloLabel: UILabel!
    @IBOutlet weak var settingsWelcomeLabel: UILabel!
    @IBOutlet weak var settingsOptionOne: UIButton!
    @IBOutlet weak var settingsDesciptionOne: UILabel!
    
    var receivedName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        receivedName = UserDefaults.standard.string(forKey: "Username") ?? ""

        settingsImageView.contentMode = .scaleAspectFill
        settingsHelloLabel.text = "Hello, \(receivedName)"
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func settingsOptionOnePressed(_ sender: Any) {
        
        performSegue(withIdentifier: "showSettingsDetails", sender: nil)
        
    }
    
    
    @IBAction func unwindToSettings(_ sender: UIStoryboardSegue) {
        
    }
}
