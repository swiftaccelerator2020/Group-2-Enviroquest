//
//  QuestViewController.swift
//  EnviroQuest
//
//  Created by Rachel Goh on 23/11/20.
//

import UIKit

class QuestViewController: UIViewController {
    struct levelData{
        var questNames: Array<String>
        var questInstructions: Array<String>
    }
    let level1 = levelData(questNames: ["Switch off lights that are not needed or used","Reuse plastic bags", "Recycle an empty plastic bottle","Take a shower that is shorter than 10 minutes", "Say no to straws!", "Calculate your family’s carbon footprints", "Make a pledge to reduce your plastic use", "Use a clothe bag when shopping instead of a plastic bag"],
        questInstructions:[
        "A simple but effective act! Many times, people forget to turn off the lights even though they are not in use. This, compounded globally, actually leaves a huge impact on our energy consumption. However, if everyone can do this simple act, we can take our first step towards saving our planet!/nTask: Switch off lights that are not in use. Take a photo of the light switched flipped to off. Simple but sweet!",
        "You know those plastic bags you receive when going to the market or shopping? Don't throw them out immediately! Plastic is the number one source of pollution, but you can avoid throwing away so many plastic bags by reusing the ones you've got! Besides, plastic bags can be useful for many things. Try it!/nTask: Reuse a plastic bag. Take a photo of the plastic bag being used for something else! :)",
        "Ahhh, plastic bottles. How many people just toss these on the beach, or on the floors of parks? Yet, plastic bottles can be remade for many purposes and things. Did you know that recycled plastic bottles have been made into shirts, fleece jackets and so on? So why not contribute? Toss that little thing into a nearby recycling bin and wish it good luck!\nTask: Recyle a plastic bottle. Take a photo of the bottle in front of the recycling bin.",
        "OH MAN! Look at that water bill! Why is it so high? You think back... oh no, you've been spending so much time in the shower.\nPeople love nice warm showers. Who wouldn't? Especially on cold nights, a long, warm shower is all we need to relax. However, do you really need to spend so much time in the shower? This wastes much water, and brings that bill up high! Why not shorten it?\nTask: Time yourself! Take a bath shorter than ten minutes. Take a picture of that timer!",
        "Oh, you've heard of this one. Restaurants all over the globe getting rid of their straws. But why??? It's so annoying! However, straws can be a major pollution. Plastic, small, easy to forget. 500 millions straws are used in a single day! Go out there to some restaurant and do you part by not using a straw. Maybe one less marine creature will be suffocated, thanks to you!\nTask: Forgo the straw. Drink straight from the cup! Take a selfie with your straw-free drink!",
        "Want to know how much carbon your family is producing? Go calculate your family's carbon footprint! To calculate the carbon dioxide emitted by the total amount of electricity generated (in kWh) utilized by you, first add up the electricity bills for the year and then multiply it by 1.22, which is the average amount of CO2 in pounds that is emitted per KWh of electricity generated. Or, if you're lazy, just go search online for a carbon footprint calculator!\nTask: Calculate your family's carbon footprint and snap a pic of it!",
        "Hoho! Time to get your creative juices flowing! Make a pledge to reduce your plastic use. What will you do? Will you use a clothe bag when shopping from now on? Will you forgo using those zip lock bags? Go ahead and search up the internet for ideas, or reflect upon how you've been using plastic. Have fun!\nTask: Take a photo of your pledge!",
        "Ok, we have to admit, clothe bags are far cuter than plastic bags! But besides that, clothe bags can be reused, are biodegradable, and definitely is worth the price! When you go shopping, instead of taking a plastic bag, go use a reusable clothe bag! Whether it's for shopping, or buying groceries, a clothe bag can always do the job!\nTask: Use a clothe bag instead of plastic bags when you go shopping. Take a selfie with your reusable clothe bag!"
        ])
      

    override func viewDidLoad() {
        super.viewDidLoad()

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
