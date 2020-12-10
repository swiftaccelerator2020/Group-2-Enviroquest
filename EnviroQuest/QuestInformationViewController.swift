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
    @IBOutlet weak var thirdAnnoyingImageIThink: UIImageView!
    @IBOutlet weak var theBackgroundView: UIView!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var questDecriptionLabel: UILabel!
    @IBOutlet weak var questTitleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        thirdAnnoyingImageIThink.contentMode = .scaleAspectFill
        theBackgroundView.layer.cornerRadius = 20
        doneButton.layer.cornerRadius = 20
        doneButton.layer.backgroundColor = .init(red: 1, green: 1, blue: 1, alpha: 1)
        questTitleLabel.text = questTitle
        questDecriptionLabel.text = questDescription
        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "confirmDone", sender: nil)
        
    }
    
    @IBAction func unwindToQuestInfo(_ sender: UIStoryboardSegue) {
        
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
