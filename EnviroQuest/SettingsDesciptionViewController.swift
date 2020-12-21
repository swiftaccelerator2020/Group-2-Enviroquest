//
//  SettingsDesciptionViewController.swift
//  EnviroQuest
//
//  Created by Apple April on 21/12/20.
//

import UIKit

class SettingsDesciptionViewController: UIViewController {

    @IBOutlet weak var settingsDescriptionImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var settingsNameLabel: UILabel!
    @IBOutlet weak var settingsAgeLabel: UILabel!
    @IBOutlet weak var settingsNameTextField: UITextField!
    @IBOutlet weak var settingsAgeTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingsDescriptionImageView.contentMode = .scaleAspectFill
    
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func saveButtonPressed(_ sender: Any) {
        
    }
    
}
