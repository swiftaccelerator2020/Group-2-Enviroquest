//
//  QuestViewController.swift
//  EnviroQuest
//
//  Created by Rachel Goh on 23/11/20.
//

import UIKit
import UICircularProgressRing


class QuestViewController: UIViewController {
    @IBOutlet weak var theFirstQuest: UILabel!
    @IBOutlet weak var theSecondQuest: UILabel!
    @IBOutlet weak var theThirdQuest: UILabel!
    @IBOutlet weak var firstButtonView: UIButton!
    @IBOutlet weak var secondButtonView: UIButton!
    //my keyboard lagged and i nearly put the name as secondButto .-.
    @IBOutlet weak var thirdButtonView: UIButton!
    @IBOutlet weak var progressView: CircularProgressView!
    

    
    var whateverLevelIsThis = 0
      var currentLevel:Level!
    var firstQuestCompleted = false
    var secondQuestCompleted = false
    var thirdQuestCompleted = false
    
    var countFired: CGFloat = 0
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (timer) in
            self.countFired += 1
            
            DispatchQueue.main.async {
                self.progressView.progress = min(0.03 * self.countFired, 1)
                
                if self.progressView.progress == 1 {
                    timer.invalidate()
                }
                
            }
        })
    
    

        
    theFirstQuest.text = currentLevel.questNames[0]
        theSecondQuest.text = currentLevel.questNames[1]
        theThirdQuest.text = currentLevel.questNames[2]
        secondButtonView.layer.cornerRadius = 20
        firstButtonView.layer.cornerRadius = 20
        thirdButtonView.layer.cornerRadius = 20
        if theLevels[currentLevel.levelNumber].questDone[0] == true{
            firstButtonView.backgroundColor = .green
            firstButtonView.isEnabled = false
        }else{
            firstButtonView.backgroundColor = .white
            firstButtonView.isEnabled = true
        }
        if theLevels[currentLevel.levelNumber].questDone[1] == true{
                secondButtonView.backgroundColor = .green
            secondButtonView.isEnabled = false
        }else{
                secondButtonView.backgroundColor = .white
            secondButtonView.isEnabled = true
        }
        if theLevels[currentLevel.levelNumber].questDone[2] == true{
                thirdButtonView.backgroundColor = .green
            thirdButtonView.isEnabled = false
            print(String(theLevels[currentLevel.levelNumber].questDone[2]))
        }else{
                thirdButtonView.backgroundColor = .white
            thirdButtonView.isEnabled = true
        }
        if theLevels[currentLevel.levelNumber].questDone[0] == true && theLevels[currentLevel.levelNumber].questDone[1] == true && theLevels[currentLevel.levelNumber].questDone[2] == true{
            theLevels[currentLevel.levelNumber].levelCompleted = true
        }
        // Do any additional setup after loading the view.
        

       
            //everything below until you see "STAWP HERE" is to be uncommented to remove cpr
        //ALSO COMMENT OUT THE CONNECTIONNNNN
//            let cp = CircularProgressView(frame: CGRect(x: 10.0, y: 10.0, width: 100.0, height: 100.0))
//            cp.trackColor = UIColor.red
//            cp.progressColor = UIColor.yellow
//            cp.tag = 101
//            self.view.addSubview(cp)
//
//            cp.center = self.view.center
//
//            self.perform(#selector(animateProgress), with: nil, afterDelay: 2.0)
//
//
//            circularProgress.trackColor = UIColor.white
//            circularProgress.progressColor = UIColor.purple
//            circularProgress.setProgressWithAnimation(duration: 1.0, value: 0.6)
        }
        //no dont you dare remove the bracket
        
//
//        @objc func animateProgress() {
//            let cP = self.view.viewWithTag(101) as! CircularProgressView
//            cP.setProgressWithAnimation(duration: 1.0, value: 0.7)
//
//        }
//STAWP HERE
        
        
        
    
    

    @IBAction func firstButtonPressed(_ sender: Any) {
        whateverLevelIsThis = 0
        self.performSegue(withIdentifier: "revealQuestInfo", sender: nil)
        
    }
    @IBAction func secondButtonPressed(_ sender: Any) {
        whateverLevelIsThis = 1
        self.performSegue(withIdentifier: "revealQuestInfo", sender: nil)
        
        
    }
    
    @IBAction func thirdButtonPressed(_ sender: Any) {
        whateverLevelIsThis = 2
        self.performSegue(withIdentifier: "revealQuestInfo", sender: nil)

    }
    func levelComplete(){
        theLevels[self.currentLevel.levelNumber-1].levelCompleted = true
        theLevels[self.currentLevel.levelNumber].questDone = [true,true,true]
    }
    func setFirstQuestToTrue(){
        theLevels[self.currentLevel.levelNumber].questDone[0] = true
        if theLevels[currentLevel.levelNumber].questDone[0] == true && theLevels[currentLevel.levelNumber].questDone[1] == true && theLevels[currentLevel.levelNumber].questDone[2] == true{
            theLevels[currentLevel.levelNumber-1].levelCompleted = true
        }
        print(theLevels[self.currentLevel.levelNumber].questDone[0])
        print("THE LEVEL IS:")
        print(theLevels[self.currentLevel.levelNumber-1].levelCompleted)
    }
    func setSecondQuestToTrue(){
        theLevels[self.currentLevel.levelNumber].questDone[1] = true
        if theLevels[currentLevel.levelNumber].questDone[0] == true && theLevels[currentLevel.levelNumber].questDone[1] == true && theLevels[currentLevel.levelNumber].questDone[2] == true{
            theLevels[currentLevel.levelNumber-1].levelCompleted = true
        }
        print(theLevels[self.currentLevel.levelNumber].questDone[1])
        print("THE LEVEL IS:")
        print(theLevels[self.currentLevel.levelNumber-1].levelCompleted)
    }
    func setThirdQuestToTrue(){
        theLevels[self.currentLevel.levelNumber].questDone[2] = true
        if theLevels[currentLevel.levelNumber].questDone[0] == true && theLevels[currentLevel.levelNumber].questDone[1] == true && theLevels[currentLevel.levelNumber].questDone[2] == true{
            theLevels[currentLevel.levelNumber-1].levelCompleted = true
        }
        print(theLevels[self.currentLevel.levelNumber].questDone[2])
        print("THE LEVEL IS:")
        print(theLevels[self.currentLevel.levelNumber-1].levelCompleted)
    }
    
    @IBAction func skipButtonPressed(_ sender: Any) {
        
        if inventory.contains("Skip") || inventory.contains("Ultra Skip"){
            if !inventory.contains("Skip"){
                let alert = UIAlertController(title: "Skip Level", message: "You have the items 'Ultra Skip'. This skips the whole level. Would you like to use it? ", preferredStyle: .alert)
                   
                               alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
                                   print("The user chose Yes")
                                if let index = inventory.firstIndex(of: "Ultra Skip") {
                                    inventory.remove(at: index)
                                    self.levelComplete()
                                    Level.saveToFile(levelStats: theLevels)
                                }
                
                               }))
                   
                               alert.addAction(UIAlertAction(title: "No", style: .default, handler: { _ in
                                   print("The user chose No")
                                   
                               }))

            self.present(alert, animated: true, completion: nil)
            }else if !inventory.contains("Ultra Skip"){
            let alert = UIAlertController(title: "Skip Level", message: "You have the items 'Skip'. This allows you to skip one quest. Use it?", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "No", style: .default, handler: { _ in
                    print("The user chose No")
                    
                }))
                           alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
                               print("The user chose Yes")
                            if let index = inventory.firstIndex(of: "Skip") {
                                inventory.remove(at: index)
                            }
                            let alert2 = UIAlertController(title: "Skip Quest", message: "Which quest would you like to skip?", preferredStyle: .alert)
                               
                                           alert2.addAction(UIAlertAction(title: "First", style: .default, handler: { _ in
                                               print("The user chose Yes")
                                            self.setFirstQuestToTrue()
                                                Level.saveToFile(levelStats: theLevels)
                                            
                            
                                           }))
                               
                                           alert2.addAction(UIAlertAction(title: "Second", style: .default, handler: { _ in
                                               print("The user chose 2")
                                            self.setSecondQuestToTrue()
                                            
                                            Level.saveToFile(levelStats: theLevels)
                                               
                                           }))
                            alert2.addAction(UIAlertAction(title: "Third", style: .default, handler: { _ in
                                print("The user chose 3")
                                self.setThirdQuestToTrue()
                                Level.saveToFile(levelStats: theLevels)
                                
                            }))
                            
        self.present(alert2, animated: true, completion: nil)
                           }))
                self.present(alert, animated: true, completion: nil)
        }else{
            let alert = UIAlertController(title: "Skip Level/Quest!", message: "Would you like to Use your ultra skip or skip?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { _ in
                print("He cancelled :(")
              
            }))
            alert.addAction(UIAlertAction(title: "Ultra Skip", style: .default, handler: { _ in
                let alert4 = UIAlertController(title: "Skip Level", message: "You have the items 'Ultra Skip'. This skips the whole level. Would you like to use it? ", preferredStyle: .alert)
                   
                               alert4.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
                                   print("The user chose Yes")
                                if let index = inventory.firstIndex(of: "Ultra Skip") {
                                    inventory.remove(at: index)
                                    self.levelComplete()
                                    Level.saveToFile(levelStats: theLevels)
                                }
                
                               }))
                   
                               alert4.addAction(UIAlertAction(title: "No", style: .default, handler: { _ in
                                   print("The user chose No")
                                   
                               }))

            self.present(alert4, animated: true, completion: nil)
              
            }))

            alert.addAction(UIAlertAction(title: "Skip", style: .default, handler: { _ in
                let alert3 = UIAlertController(title: "Skip Level", message: "You have the items 'Skip'. This allows you to skip one quest. Use it?", preferredStyle: .alert)
                    alert3.addAction(UIAlertAction(title: "No", style: .default, handler: { _ in
                        print("The user chose No")
                        
                    }))
                               alert3.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
                                   print("The user chose Yes")
                                if let index = inventory.firstIndex(of: "Skip") {
                                    inventory.remove(at: index)
                                }
                                let alert2 = UIAlertController(title: "Skip Quest", message: "Which quest would you like to skip?", preferredStyle: .alert)
                                   
                                               alert2.addAction(UIAlertAction(title: "First", style: .default, handler: { _ in
                                                   print("The user chose Yes")
                                                self.setFirstQuestToTrue()
                                                    Level.saveToFile(levelStats: theLevels)
                                                
                                
                                               }))
                                   
                                               alert2.addAction(UIAlertAction(title: "Second", style: .default, handler: { _ in
                                                   print("The user chose 2")
                                                self.setSecondQuestToTrue()
                                                
                                                Level.saveToFile(levelStats: theLevels)
                                                   
                                               }))
                                alert2.addAction(UIAlertAction(title: "Third", style: .default, handler: { _ in
                                    print("The user chose 3")
                                    self.setThirdQuestToTrue()
                                    Level.saveToFile(levelStats: theLevels)
                                    
                                }))
                                
            self.present(alert2, animated: true, completion: nil)
                               }))
                    self.present(alert3, animated: true, completion: nil)
               
              
            }))

            self.present(alert, animated: true, completion: nil)
        }
        
    }else{
        let alert = UIAlertController(title: "No Skips!", message: "Go to the shop to buy more skips!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in
            
          
        }))
        self.present(alert, animated: true, completion: nil)
    
    }
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
