//
//  SettingsCreditsViewController.swift
//  EnviroQuest
//
//  Created by Apple April on 28/12/20.
//

import UIKit
import SafariServices

class SettingsCreditsViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var creditsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImageView.contentMode = .scaleAspectFill
        creditsLabel.text = "https://www.50waystohelp.com/ \nhttps://www.conserve-energy-future.com/35-wonderful-ways-to-protect-biodiversity-that-you-need-to-know-today.php \nhttps://recyclecoach.com/residents/blog/an-intro-to-e-waste-why-its-a-problem/ \nhttps://www.makeitgrateful.com/sustainability/reduce-food-waste-organize-your-fridge/\nhttps://www.self.com/story/ways-to-help-the-environment\nhttps://www.colliercountyfl.gov/your-government/divisions-s-z/solid-hazardous-waste-management/keeping-green-helpful-information-page/the-facts-on-styrofoam-reduce-and-reuse\nhttps://www.nationalexpresstransit.com/blog/9-benefits-of-public-transportation/\nhttps://www.epa.gov/greenvehicles/greenhouse-gas-emissions-typical-passenger-vehicle\nhttps://oceanservice.noaa.gov/ocean/earthday.html"
        
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
