//
//  SettingsDesciptionViewController.swift
//  EnviroQuest
//
//  Created by Apple April on 21/12/20.
//

import UIKit

class SettingsDesciptionViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var settingsDescriptionImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var settingsNameLabel: UILabel!
    @IBOutlet weak var settingsAgeLabel: UILabel!
    @IBOutlet weak var settingsNameTextField: UITextField!
    @IBOutlet weak var settingsAgeTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsAgeTextField.delegate = self
        settingsNameTextField.delegate = self
        

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
        UserDefaults.standard.set(settingsNameTextField.text, forKey: "Username")
        UserDefaults.standard.set(settingsAgeTextField.text, forKey: "Age")
        
        
        let saveAlert = UIAlertController(title: "Done!", message: "Your new information has been saved! Please reopen the app to see changes", preferredStyle: .alert)
        saveAlert.addAction(UIAlertAction(title: "Ok!", style: .default, handler: { _ in
            
        }))
        self.present(saveAlert
                     , animated: true, completion: nil)
    }
    
}
