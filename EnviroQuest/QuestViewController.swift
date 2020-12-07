//
//  QuestViewController.swift
//  EnviroQuest
//
//  Created by Rachel Goh on 23/11/20.
//

import UIKit

class QuestViewController: UIViewController {
    var currentLevel:Level!
    
    @IBOutlet weak var tempQuestLabel: UILabel!
    
    @IBOutlet weak var tempDescriptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tempQuestLabel.text = currentLevel.questNames[1]
        tempDescriptionLabel.text = currentLevel.questDescriptions[1]

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
