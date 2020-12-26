//
//  ProgressViewController.swift
//  EnviroQuest
//
//  Created by Akshara Mantha on 23/11/20.
//

import UIKit

public var theLevels: [Level] = []
//see all comments
//they are moved to somewhere after this whole chunck
class ProgressViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    
    
    
    /*
    the "create an Earth jar" challenge can be moved to level 5 onwards, it's pretty hard
    https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiAm_3horPtAhUadCsKHQLUB6YQwqsBMAF6BAgDEAM&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D9GorqroigqM%26vl%3Den&usg=AOvVaw01ydigrirzfFBXb4Qk32Xj
    link to the story of stuff
*/
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
        //fifty lah if not kanna die XD
        //right now only got 20...very sed :cry:
        //i'll remove if not kanna die XD
        //empty empty texttttt
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Levels", for: indexPath) as! ProgressTableViewCell
        if indexPath.row >= 1{
        if theLevels[indexPath.row - 1].levelCompleted == false{
            cell.buttonDescriptionView.setTitle("Complete the previous level!", for: .normal)
            
        }
        }
        print(theLevels[1].levelCompleted)
        if theLevels[indexPath.row].levelCompleted == false{
            
            cell.buttonDescriptionView.setTitle("Incomplete", for: .normal)
            
        }else if theLevels[indexPath.row].levelCompleted == true{
            
            cell.buttonDescriptionView.setTitle("Completed", for: .normal)
        }
        
        cell.numberView.layer.cornerRadius = cell.numberView.frame.height/2
        if theLevels[indexPath.row].levelCompleted == true{
            cell.numberView.backgroundColor = .green
        }else{
        cell.numberView.backgroundColor = .red
        }
        cell.numberLabel.text = String(indexPath.row + 1)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if let loadedLevelStats = Level.loadFromFile() {
                print("Found file! Loading stats!")
                theLevels = loadedLevelStats
            } else {
                print("No new stats :( back to noob level")
                theLevels = Level.loadSampleData()
            }
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
            if segue.identifier == "goToQuests",
                let destination = segue.destination as? QuestViewController,
                let currentlySelectedCell = tableView.indexPathForSelectedRow
                {
                destination.currentLevel = theLevels[currentlySelectedCell.row]
            }
            //There was never anything sus here
        
            //everything sus happened here
            
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
