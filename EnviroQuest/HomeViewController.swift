//
//  HomeViewController.swift
//  Environment Quest V1
//
//  Created by Yinjia on 12/11/20.
//

import UIKit


var currentFactCounter = 1
var gemCounter = 0


var facts = ["Every day, American businesses generate enough paper to circle the earth 20 times!",
             "Recycling one aluminum can saves enough energy to run a TV for three hours.",
             "During the time it takes you to read this sentence, 50,000 12-ounce aluminum cans are made.",
             "An aluminum can may be recycled ad infinitum (forever!).",
             "We consume over 80 trillion aluminum cans every year.",
             "The world's tallest tree is a coast redwood in California, measuring more than 360 feet or 110 meters.",
             "The world's oldest trees are 4,600 year old Bristlecone pines in the USA.",
             "Every day, American businesses generate enough paper to circle the earth 20 times!",
             "Each year, Americans throw away 25 trillion Styrofoam cups.",
             "Only 1% of the world's water supply is usable, 97% are the oceans and 2% is frozen (for now).",
             "Mel Blanc (voice of Bugs Bunny) was allergic to carrots (just checking that you're still paying attention!).",
             "Recycling a single run of the Sunday New York Times would save 75,000 trees (about the same for more major papers' Sunday editions).",
             "On average, ONE supermarket goes through 60,500,000 paper bags per year!",
             "An automatic dishwasher uses less hot water than doing dishes by hand, an average of six gallons less per cycle, or over 2,000 gallons per year.",
             "The amount of wood and paper we throw away each year is enough to heat 50,000,000 homes for 20 years.",
             "Every time you open the refrigerator door, up to 30 percent of the cold air can escape.",
             "Americans use 2,500,000 plastic bottles every hour, most of which are thrown away!",
             "Plastic bags and other plastic garbage thrown into the ocean kill as many as 1,000,000 sea creatures every year.",
             "A modern glass bottle takes 4000 years or more to decompose.",
             "About one-third of an average landfill is made up of packaging material.",
             "The U.S. is the #1 trash-producing country in the world at 1,609 pounds per person per year. This means that 5% of the world's people generate 40% of the world's waste.",
             "We toss out two billion plastic razors, a million and a half tons of paper towels, and 12 billion disposable diapers annually.",
             "More than 20,000,000 Hershey's Kisses are wrapped each day, using 133 square miles of tinfoil. All that foil is recyclable!",
             "Rainforests are being cut down at the rate of 100 acres per minute."]

class HomeViewController: UIViewController {
    @IBOutlet weak var gemsCounterLabel: UILabel!
    @IBOutlet weak var newFactButton: UIButton!
    @IBOutlet weak var newFactLabel: UILabel!
    //will link after auto layout
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var factUIView: UIView!
    
    var receivedName = ""
   
    override func viewDidLoad() {
        super.viewDidLoad()
        gemsCounterLabel.text = "💎 \(gemCounter)"
        newFactButton.layer.cornerRadius = 20
        newFactButton.setTitle("Generate New Fact", for: .normal)
        helloLabel.text = "Hello, \(receivedName)"
        newFactLabel.layer.cornerRadius = 20
        newFactLabel.text = facts[currentFactCounter]
        factUIView.layer.cornerRadius = 20;
        }
    
    //will link after auto layout
    @IBAction func newFactButtonPressed(_ sender: Any) {
        if currentFactCounter == facts.count - 1 {
            print("reset")
            currentFactCounter = 0
        }else{
            currentFactCounter += 1
        }

        
        newFactLabel.text = facts[currentFactCounter]
        
        print("the current count is \(currentFactCounter)")
        
       
    }
    
    
    
  
  
    
    
    
    //OK
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
