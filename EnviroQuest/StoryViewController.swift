//
//  StoryViewController.swift
//  Environment Quest V1
//
//  Created by Apple April on 13/11/20.
//

import UIKit

class StoryViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var letsGoButton: UIButton!
    @IBOutlet weak var anotherStubbornImageView: UIImageView!
    @IBOutlet weak var storyBackgroundView: UIButton!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyBackgroundView.layer.cornerRadius = 20
        
        letsGoButton.layer.cornerRadius = 10
        storyLabel.layer.cornerRadius = 20
        anotherStubbornImageView.contentMode = .scaleAspectFill
        
        storyLabel.text = "Hello \(name), the year is 2100... The Earth is almost inhabitable. Green life is dead. Biodiversity is down to 0.25%. \nYou are on a mission to time travel back to 2000 to change things! \nComplete quests for 💎"
        
   }
    
    
    

    @IBAction func letsGoButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "home", sender: nil)
    
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
