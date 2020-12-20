//
//  HomeViewController.swift
//  Environment Quest V1
//
//  Created by Yinjia on 12/11/20.
//

import UIKit
import UICircularProgressRing

var currentFactCounter = 1
public var gemCounter = 0


//struct ProgressRingExample: View? {
//    @State var progress = RingProgress.percent(0.44)
//
//    var body: some View {
//        VStack {
//            ProgressRing(
//                progress: $progress,
//                axis: .top,
//                clockwise: true,
//                outerRingStyle: .init(
//                    color: .color(.gray),
//                    strokeStyle: .init(lineWidth: 20)
//                ),
//                innerRingStyle: .init(
//                    color: .color(.green),
//                    strokeStyle: .init(lineWidth: 10),
//                    padding: 5
//                )
//            )
//                .animation(.easeInOut(duration: 5))
//                .padding(32)
//        }
//    }
//}
//
//



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
             "Rainforests are being cut down at the rate of 100 acres per minute.", "If Earth’s history is compared to a calendar year: Modern human has existed for about 37 minutes. One third of Earth’s natural resources has been consumed in the last 0.2 seconds (by modern humans).", "If current patterns continue, we will have emptied the world’s oceans for seafood by 2050.", "The consumer society is thirsty. Very thirsty. 'There will be no water by 2040 if we keep doing what we're doing today'. (Professor Benjamin Sovacool of Aarhus University, Denmark).", "The world population is 215,000 people larger today than it was yesterday.", "If all life on Earth was put on a scale, the human population would only make up about one ten-thousandth of the total weight of life on Earth.", "By 2100, the global urban population will produce three times more waste than today", "27,000 trees are cut down each day so we can have Toilet Paper.", "American companies alone use enough Paper to encircle the Earth 3x! (It’s a good thing that businesses are moving towards going paperless)", "When you throw plastic bags and other plastic materials in the ocean, it kills as many as 1 million sea creatures annually.", "A glass bottle made in our time will take more than 4,000 years to decompose.", "Only 1% of our planet’s water supply can be used. 97% is ocean water and 2% is frozen solid in the Arctic, for now.", "Our planet gains inhabitants numbering to 77 million people a year.", "An estimated 50,000 species inhabiting our tropical forests become extinct annually. That’s an average of 137 species a day.", "Rainforests are cut down at a rate of 100 acres per minute.", "The world’s oldest trees are more than 4,600 years old.", "Landfills are composed of 35% packaging materials.", "Recycling one aluminum can saves enough energy to run a TV for three hours.", "During the time it takes you to read this sentence, 50,000 12-ounce aluminum cans are made.", "An aluminum can may be recycled ad infinitum (forever!).", "We consume over 80 trillion aluminum cans every year.", "The world's tallest tree is a coast redwood in California, measuring more than 360 feet or 110 meters.", "The world's oldest trees are 4,600 year old Bristlecone pines in the USA.", "Every day, American businesses generate enough paper to circle the earth 20 times!", "Each year, Americans throw away 25 trillion Styrofoam cups.", " Only 1% of the world's water supply is usable, 97% are the oceans and 2% is frozen (for now).", " Mel Blanc (voice of Bugs Bunny) was allergic to carrots (just checking that you're still paying attention!).", "Recycling a single run of the Sunday New York Times would save 75,000 trees (about the same for more major papers' Sunday editions).", "On average, ONE supermarket goes through 60,500,000 paper bags per year!", "An automatic dishwasher uses less hot water than doing dishes by hand, an average of six gallons less per cycle, or over 2,000 gallons per year.", "Only 3% of our planet’s water is drinkable. 97% of it is salt water. More than half of the Earth’s fresh water can be found frozen in the glaciers. The rest is underground.", "The water in our lakes, ponds, streams, rivers, ponds and other surface water makes up 0.3% of our fresh water resource.", "25% of the bottled water you buy is really municipal tap water.", "There is more water vapor in the atmosphere than all the combined rivers on the planet.", "The Niagara Falls process 750,000 gallons of water every second!"]









class HomeViewController: UIViewController {
    @IBOutlet weak var gemsCounterLabel: UILabel!
    @IBOutlet weak var newFactButton: UIButton!
    @IBOutlet weak var newFactLabel: UILabel!


    
    
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var factUIView: UIView!
    
    var receivedName = ""
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        gemCounter = UserDefaults.standard.integer(forKey: "gems")
        
        receivedName = UserDefaults.standard.string(forKey: "Username") ?? ""
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
        currentFactCounter += 1
        print("The current Qin Guan (fact) count is \(currentFactCounter)")
        
        if currentFactCounter == facts.count {
            currentFactCounter = 0
            print("The Qin Guan (fact) count has been reset")
        }

        
        newFactLabel.text = facts[currentFactCounter]
        
        print("A new Qin Guan has been generated! The current Qin Guan count is \(currentFactCounter)")
        
       
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
