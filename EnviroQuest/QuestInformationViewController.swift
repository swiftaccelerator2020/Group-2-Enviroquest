//
//  QuestInformationViewController.swift
//  EnviroQuest
//
//  Created by Rachel Goh on 7/12/20.
//

import UIKit

class QuestInformationViewController: UIViewController {
    var questDescription:String!
    var questTitle:String!
    var levelNumber:Int!
    var questChosen:Int!
    @IBOutlet weak var thirdAnnoyingImageIThink: UIImageView!
    @IBOutlet weak var theBackgroundView: UIView!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var questDecriptionLabel: UILabel!
    @IBOutlet weak var questTitleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        doneButton.layer.cornerRadius = 20
        doneButton.backgroundColor = UIColor.systemIndigo
        thirdAnnoyingImageIThink.contentMode = .scaleAspectFill
        theBackgroundView.layer.cornerRadius = 20
        doneButton.layer.cornerRadius = 20
 
        questTitleLabel.text = questTitle
        questDecriptionLabel.text = questDescription
        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "confirmDone", sender: nil)
        
    }
    
    
    @IBAction func unwindToQuest(_ sender: UIStoryboardSegue) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "confirmDone" {
            let destVC = segue.destination as! QuestDoneViewController
            destVC.currentQuestNumber = questChosen
            destVC.currentLevel = levelNumber
        
        
    }
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
