//
//  QuestViewController.swift
//  EnviroQuest
//
//  Created by Rachel Goh on 23/11/20.
//

import UIKit

class QuestViewController: UIViewController {
    @IBOutlet weak var theFirstQuest: UILabel!
    @IBOutlet weak var theSecondQuest: UILabel!
    @IBOutlet weak var theThirdQuest: UILabel!
    @IBOutlet weak var firstButtonView: UIButton!
    @IBOutlet weak var secondButtonView: UIButton!
    //my keyboard lagged and i nearly put the name as secondButto .-.
    @IBOutlet weak var thirdButtonView: UIButton!
    
    var currentLevel:Level!
    var assignedNumberFor1 = 1
    var assignedNumberFor2 = 2
    var assignedNumberFor3 = 3
    override func viewDidLoad() {
        super.viewDidLoad()
        theFirstQuest.text = currentLevel.questNames[assignedNumberFor1]
        theSecondQuest.text = currentLevel.questNames[assignedNumberFor2]
        theThirdQuest.text = currentLevel.questNames[assignedNumberFor3]
        secondButtonView.layer.cornerRadius = 20
        firstButtonView.layer.cornerRadius = 20
        thirdButtonView.layer.cornerRadius = 20
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func firstButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "revealQuestInfo", sender: nil)
    }
    @IBAction func secondButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "revealQuestInfo", sender: nil)
    }
    
    @IBAction func thirdButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "revealQuestInfo", sender: nil)
    }
    /*

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
