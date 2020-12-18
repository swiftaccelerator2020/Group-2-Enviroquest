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
    @IBOutlet weak var circularProgress: CircularProgressView!
    
    var whateverLevelIsThis = 0
      var currentLevel:Level!
    var firstQuestCompleted = false
    var secondQuestCompleted = false
    var thirdQuestCompleted = false
    
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        theFirstQuest.text = currentLevel.questNames[0]
        theSecondQuest.text = currentLevel.questNames[1]
        theThirdQuest.text = currentLevel.questNames[2]
        secondButtonView.layer.cornerRadius = 20
        firstButtonView.layer.cornerRadius = 20
        thirdButtonView.layer.cornerRadius = 20
        if theLevels[currentLevel.levelNumber].questDone[0] == true{
            firstButtonView.backgroundColor = .green
        }else{
            firstButtonView.backgroundColor = .white
        }
        if theLevels[currentLevel.levelNumber].questDone[1] == true{
                secondButtonView.backgroundColor = .green
        }else{
                secondButtonView.backgroundColor = .white
        }
        if theLevels[currentLevel.levelNumber].questDone[2] == true{
                thirdButtonView.backgroundColor = .green
        }else{
                thirdButtonView.backgroundColor = .white
        }
        // Do any additional setup after loading the view.
        

       
            
            let cp = CircularProgressView(frame: CGRect(x: 10.0, y: 10.0, width: 100.0, height: 100.0))
            cp.trackColor = UIColor.red
            cp.progressColor = UIColor.yellow
            cp.tag = 101
            self.view.addSubview(cp)
            
            cp.center = self.view.center
            
            self.perform(#selector(animateProgress), with: nil, afterDelay: 2.0)
            
            
            circularProgress.trackColor = UIColor.white
            circularProgress.progressColor = UIColor.purple
            circularProgress.setProgressWithAnimation(duration: 1.0, value: 0.6)
        }
        
        
        
        @objc func animateProgress() {
            let cP = self.view.viewWithTag(101) as! CircularProgressView
            cP.setProgressWithAnimation(duration: 1.0, value: 0.7)
            
        }

        
        
        
    
    

    @IBAction func firstButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "revealQuestInfo", sender: nil)
        whateverLevelIsThis = 0
    }
    @IBAction func secondButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "revealQuestInfo", sender: nil)
        whateverLevelIsThis = 1
    }
    
    @IBAction func thirdButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "revealQuestInfo", sender: nil)
        whateverLevelIsThis = 2
    }
    
    @IBAction func unwindToQuestInfo(_ sender: UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        if segue.identifier == "revealQuestInfo"{
//            let destination = segue.destination as? (UINavigationController.children.first) as? QuestInformationViewController
            let destnv = segue.destination as? UINavigationController
            let destination = destnv?.viewControllers.first as! QuestInformationViewController
            destination.questDescription = currentLevel.questDescriptions[whateverLevelIsThis]
            destination.questTitle = currentLevel.questNames[whateverLevelIsThis]
            destination.questChosen = whateverLevelIsThis
            destination.levelNumber = currentLevel.levelNumber
        }
            //There was never anything sus here
        
            //everything sus happened here
            
        }
    /*
     //OOPS

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
