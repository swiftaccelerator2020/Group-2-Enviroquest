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
    let level2 = levelData(questNames: ["Take public transport instead!","Plant a seed", "Bring your own cutlery","Buy organic vegetables!", "Eat a vegetarian meal", "Go for a walk at a park", "Volunteer for a clean up", "Find the nearrest recycling bin to your home"],
        questInstructions:[
        "With all the traffic in the world, we are producing so much greenhouse gases everyday! In fact, in 2018, greenhouse gas emissions from transportation accounted for about 28.2 percent of total U.S. greenhouse gas emissions, making it the largest contributer of U.S. greenhouse gas emissions. However, more use of public transportation can help reduce air pollution. Public transportation produces far fewer quantities of air pollutants per passenger mile. So try it!\nTask: Take public transport for one day! Take a selfie as you go around the country!",
        "Plants are amazing! They are the number one factor that gets rid of carbon dioxide, and produces fresh, clean oxygen for us to breathe in! However, nowadays, many trees are being cut down to make space for buildings and housing, or just for the wood. Not only is this damaging to the climate, but this eliminates the natural habitats of much biodiversity! Do your part by planting a seed!\nTask: Plant a seed. Anywhere! In your backyard, in a small pot... Just take a picture of it!",
        "Restaurants nowadays use a lot of disposable cutlery. This is because those are cheap, they don't need to wash those, and they are just handy in general. However, styrofoam boxes and plastic forks are not biodegradable! In fact, styrofoam takes and estimated 500 years to decompose! Even if they do not use disposable cutlery and utensils, the amount of water used to wash those would still be bad enough. Why not make it easier for both the Earth and the people working there by bringing your own cutlery?\nTask: Bring your own cutlery when you go out to eat! Take a selfie with your meal :)",
        "'Wait, why?' you say. 'Organic vegetables are more expensive than the normal ones!' Well, yes, but did you know that organic farming is better for the environemnt? Organic farming practices may reduce pollution, conserve water, reduce soil erosion, increase soil fertility, and use less energy. Farming without synthetic pesticides is also better for nearby birds and animals as well as people who live close to farms. By supporting these environmently-friendly farms, you would be one step closer to helping the environment!\nTask: Buy organic vegetables, and take a selfie!",
        "Naturally, if you are a vegetarian, goodjob! Of course, meat is good to eat. It provides us with important things like proteins, and tastes delicious! However, the farming of animals harms the environment. It contributes to land and water degradation, biodiversity loss, acid rain, coral reef degeneration and deforestation. Nowhere is this impact more apparent than climate change – livestock farming contributes 18% of human produced greenhouse gas emissions worldwide. Hence, an occasional salad would be good!\nTask: Eat a vegetarian meal, and take a selfie!",
        "Take a break from the electronics, the busy traffic, and the stressful work. Go take a walk in the park! Stroll among the trees, with leaves rustling gently as the breeze combs through your hair. Inhale the fresh air as grass and ferns dance along rhythmatically, and close your eyes and appreciate the chiming songs of birds. Bend over the nearby lake and admire the shimmering reflection of the cloud-dotted sky.... unless it's raining, of course.\nTask: Take a walk in the park! It's a bonus if you go with your family too. Take a picture there!",
        "Oh no! Look at all the pollution on the beach! The bottle caps dotting the coast, plastic bags bobbing up and down in the sea... It really is a mess! Or maybe it is a park that is dirty, with straws 'decorating' the withering grass. No matter the place, it would definitely help if you could clean it up! By picking up litter and cleaning up places, not only are we keeping these public places sanitary, but we also prevent land pollution. Why not give it a try!\nTask: Sign up for a public clean up. Take a picture of yourself contributing to society!",
        "Yep! Every house should have a nearby recycling bin. Where's yours? Go around your neighbourhood and find the one nearest to you. And if you have anything to recycle, that's a perfect oppurtunity! Do remember to sort your rubbish properly!\nTask: Find the nearest recycling bin to your house. Snap a picture of it!"
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
