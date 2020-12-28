//
//  SettingsCreditsViewController.swift
//  EnviroQuest
//
//  Created by Apple April on 28/12/20.
//

import UIKit

class SettingsCreditsViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var creditsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.contentMode = .scaleAspectFill
        creditsLabel.text = "Credits NO ONE DO ANYTHING YET AHHDASF GACEHSUSHBDBG!!!!!!!!!"
        
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

}
