//
//  EnterDetailsViewController.swift
//  Environment Quest V1
//
//  Created by Apple April on 7/11/20.
//

import UIKit

class EnterDetailsViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    //will link after auto layout
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet var tgr: UITapGestureRecognizer!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        ageTextField.delegate = self
        nameTextField.delegate = self
        doneButton.layer.cornerRadius = 20
    }
    
    @IBAction func screenTapped(_ sender: Any) {
        nameTextField.resignFirstResponder()
    }
    
   
    @IBAction func doneButtonPressed(_ sender: Any) {
        UserDefaults.standard.set(nameTextField.text, forKey: "Username")
        UserDefaults.standard.set(ageTextField.text, forKey: "Age")
        self.performSegue(withIdentifier: "story", sender: nil)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        return false
    
    }
    
   
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "story" {
            let destVC = segue.destination as! StoryViewController
            destVC.name = nameTextField.text!
        
        
    }
}
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "home" {
//            let destVC2 = segue.destination as! HomeViewController
//            destVC2.receivedName = nameTextField.text!
//            }
//    }
//
//
    /*
     @IBAction func textFieldClicked(_ sender: Any) {
     @IBAction func nameTextFieldFilled(_ sender: Any) {
     }
     }
    
    
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */}

