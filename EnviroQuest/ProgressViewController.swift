//
//  ProgressViewController.swift
//  EnviroQuest
//
//  Created by Akshara Mantha on 23/11/20.
//

import UIKit

//see all comments
//they are moved to somewhere after this whole chunck
class ProgressViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var theLevels = [Level(levelNumber: 1, questNames: ["Switch off lights that are not needed or used","Reuse plastic bags", "Recycle an empty plastic bottle","Take a shower that is shorter than 10 minutes", "Say no to straws!", "Calculate your family’s carbon footprints", "Make a pledge to reduce your plastic use", "Use a cloth bag when shopping instead of a plastic bag"],questDescriptions:[
                            "A simple but effective act! Many times, people forget to turn off the lights even though they are not in use. This, compounded globally, actually leaves a huge impact on our energy consumption. However, if everyone can do this simple act, we can take our first step towards saving our planet!/nTask: Switch off lights that are not in use. Take a photo of the light switched flipped to off. Simple but sweet!",
                            "You know those plastic bags you receive when going to the market or shopping? Don't throw them out immediately! Plastic is the number one source of pollution, but you can avoid throwing away so many plastic bags by reusing the ones you've got! Besides, plastic bags can be useful for many things. Try it!/nTask: Reuse a plastic bag. Take a photo of the plastic bag being used for something else! :)",
                            "Ahhh, plastic bottles. How many people just toss these on the beach, or on the floors of parks? Yet, plastic bottles can be remade for many purposes and things. Did you know that recycled plastic bottles have been made into shirts, fleece jackets and so on? So why not contribute? Toss that little thing into a nearby recycling bin and wish it good luck!\nTask: Recyle a plastic bottle. Take a photo of the bottle in front of the recycling bin.",
                            "OH MAN! Look at that water bill! Why is it so high? You think back... oh no, you've been spending so much time in the shower.\nPeople love nice warm showers. Who wouldn't? Especially on cold nights, a long, warm shower is all we need to relax. However, do you really need to spend so much time in the shower? This wastes much water, and brings that bill up high! Why not shorten it?\nTask: Time yourself! Take a bath shorter than ten minutes. Take a picture of that timer!",
                            "Oh, you've heard of this one. Restaurants all over the globe getting rid of their straws. But why??? It's so annoying! However, straws can be a major pollution. Plastic, small, easy to forget. 500 millions straws are used in a single day! Go out there to some restaurant and do you part by not using a straw. Maybe one less marine creature will be suffocated, thanks to you!\nTask: Forgo the straw. Drink straight from the cup! Take a selfie with your straw-free drink!",
                            "Want to know how much carbon your family is producing? Go calculate your family's carbon footprint! To calculate the carbon dioxide emitted by the total amount of electricity generated (in kWh) utilized by you, first add up the electricity bills for the year and then multiply it by 1.22, which is the average amount of CO2 in pounds that is emitted per KWh of electricity generated. Or, if you're lazy, just go search online for a carbon footprint calculator!\nTask: Calculate your family's carbon footprint and snap a pic of it!",
                            "Hoho! Time to get your creative juices flowing! Make a pledge to reduce your plastic use. What will you do? Will you use a clothe bag when shopping from now on? Will you forgo using those zip lock bags? Go ahead and search up the internet for ideas, or reflect upon how you've been using plastic. Have fun!\nTask: Take a photo of your pledge!",
                            "Okay, we have to admit, clothe bags are far cuter than plastic bags! But besides that, clothe bags can be reused, are biodegradable, and definitely is worth the price! When you go shopping, instead of taking a plastic bag, go use a reusable clothe bag! Whether it's for shopping, or buying groceries, a clothe bag can always do the job!\nTask: Use a cloth bag instead of plastic bags when you go shopping. Take a selfie with your reusable clothe bag!"
                            ]),
                       Level(levelNumber: 2, questNames: ["Take public transport instead!","Plant a seed", "Bring your own cutlery","Buy organic vegetables!", "Eat a vegetarian meal", "Go for a walk at a park", "Volunteer for a clean up", "Find the nearest recycling bin to your home"],
                                           questDescriptions:[
                            "With all the traffic in the world, we are producing so much greenhouse gases everyday! In fact, in 2018, greenhouse gas emissions from transportation accounted for about 28.2 percent of total U.S. greenhouse gas emissions, making it the largest contributer of U.S. greenhouse gas emissions. However, more use of public transportation can help reduce air pollution. Public transportation produces far fewer quantities of air pollutants per passenger mile. So try it!\nTask: Take public transport for one day! Take a selfie as you go around the country!",
                            "Plants are amazing! They are the number one factor that gets rid of carbon dioxide, and produces fresh, clean oxygen for us to breathe in! However, nowadays, many trees are being cut down to make space for buildings and housing, or just for the wood. Not only is this damaging to the climate, but this eliminates the natural habitats of much biodiversity! Do your part by planting a seed!\nTask: Plant a seed. Anywhere! In your backyard, in a small pot... Just take a picture of it!",
                            "Restaurants nowadays use a lot of disposable cutlery. This is because those are cheap, they don't need to wash those, and they are just handy in general. However, styrofoam boxes and plastic forks are not biodegradable! In fact, styrofoam takes and estimated 500 years to decompose! Even if they do not use disposable cutlery and utensils, the amount of water used to wash those would still be bad enough. Why not make it easier for both the Earth and the people working there by bringing your own cutlery?\nTask: Bring your own cutlery when you go out to eat! Take a selfie with your meal :)",
                            "'Wait, why?' you say. 'Organic vegetables are more expensive than the normal ones!' Well, yes, but did you know that organic farming is better for the environemnt? Organic farming practices may reduce pollution, conserve water, reduce soil erosion, increase soil fertility, and use less energy. Farming without synthetic pesticides is also better for nearby birds and animals as well as people who live close to farms. By supporting these environmently-friendly farms, you would be one step closer to helping the environment!\nTask: Buy organic vegetables, and take a selfie!",
                            "Naturally, if you are a vegetarian, good job! Of course, meat is good to eat. It provides us with important things like proteins, and tastes delicious! However, the farming of animals harms the environment. It contributes to land and water degradation, biodiversity loss, acid rain, coral reef degeneration and deforestation. Nowhere is this impact more apparent than climate change – livestock farming contributes 18% of human produced greenhouse gas emissions worldwide. Hence, an occasional salad would be good!\nTask: Eat a vegetarian meal, and take a selfie!",
                            "Take a break from the electronics, the busy traffic, and the stressful work. Go take a walk in the park! Stroll among the trees, with leaves rustling gently as the breeze combs through your hair. Inhale the fresh air as grass and ferns dance along rhythmatically, and close your eyes and appreciate the chiming songs of birds. Bend over the nearby lake and admire the shimmering reflection of the cloud-dotted sky.... unless it's raining, of course.\nTask: Take a walk in the park! It's a bonus if you go with your family too. Take a picture there!",
                            "Oh no! Look at all the pollution on the beach! The bottle caps dotting the coast, plastic bags bobbing up and down in the sea... It really is a mess! Or maybe it is a park that is dirty, with straws 'decorating' the withering grass. No matter the place, it would definitely help if you could clean it up! By picking up litter and cleaning up places, not only are we keeping these public places sanitary, but we also prevent land pollution. Why not give it a try!\nTask: Sign up for a public clean up. Take a picture of yourself contributing to society!",
                            "Yep! Every house should have a nearby recycling bin. Where's yours? Go around your neighbourhood and find the one nearest to you. And if you have anything to recycle, that's a perfect oppurtunity! Do remember to sort your rubbish properly!\nTask: Find the nearest recycling bin to your house. Snap a picture of it!"
                            ]),
    Level(levelNumber: 3, questNames: ["Clear all your spam emails!", "Make art out of your trash!", "Go vegan for 3 days!", "Make a terrarium!", "Try to repair something", "Make a compost bin for your kitchen", "Measure your weekly trash output!", "Turn off appliances at the main sockets if they are not in use"], questDescriptions: [
                            "You may be surprised, but clearing all these unnecessary emails will atually be saving our planet in a small way! Did you know that every old email stored in your inbox is using up energy? Decluttering your inbox is a quick and easy way to reduce your electricity consumption and shrink your carbon footprint. \nTask: Clear your inbox and rid all the spam emails. Don't forget to take a picture of your clean and green inbox!",
                            "Alright, we know what you must be thinking. Trash??? It sounds unhygenic doesn't it? But  if you look harder, a good amount of your trash can actually be turned into a beautiful piece of art. Cool, isn't it? Make sure you use trash that can be salvaged and reused! \nTask: Make some pretty portraits or pictures out of your trash, then host an art show for your family! Snap a picture of the gallery of works!",
                            "Now, if you're vegan, you'll do amazingly well for this one! The environmental and ethical case for a diet free of all animal products, including meat, fish, dairy and eggs, is the “single biggest way” to reduce your impact on the planet, according to research from the University of Oxford. Give it a try! Who knows, maybe you'll love it. \nTask: Go vegan for 3 days and do some research about it. Remember to take a picture of one of your meals!",
                            "Well, there are actually quite a few benefits of terrariums. Did you know they help grow plants that would be difficult to grow in dry air? They also provide a confined space for a garden – a 'mini garden', if you will. And hey, it also make a beautiful piece of decor for your home, especially since its extremely low-maintenance. \nTask: Make a terrarium, it's as simple as that! Design it however you like, but don't forget to take a picture of your little creation!",
                            "Whether a toy, gadget or a picture frame, there are instructions on how to fix anything on YouTube! Discuss how repair cuts waste while you fix your item. Besides, repairing something is actually a form of recyling. Way to go! /nTask: Repair something old or broken you have lying in your home. Take a picture of the repaired item!",
                            "Hoho! This one's interesting. Did you know that composting not only adds nutrients to the soil, but also introduces valuable organisms to the soil? Microorganisms, such as bacteria, fungi, and protozoa, decompose organic material. It's great for the environment! And if you're really up to it, go ahead and learn about how the process of decomposition works! \nTask: Make a compost bin and snap a picture of you using it!",
                            "Yes, you heard us right. Measuring your weekly trash output may seem a little dry, but it's very important if you want to control and regulate the amount of trash your family contributes to! This way, you know how much trash you need to cut back on. Feel free to involve your family too! \nTask: Make a chart on your family's weekly trash output and snap a picture of it!",
                            "This one is as easy as ABC. On your way out of a room, take the extra effort to turn of all your appliances, be it the fan, the air conditioner, the lights, and more! This saves electricity and the environment will definitely have it better. \nTask: Turn off the electric appliances when you leave your room or house. Don't forget to take a selfie of yourself saving electricity!"]),
    Level(levelNumber: 4, questNames: ["Measure your trash output for one day","Reorganisise your fridge","Create an environmental online challenge","Repair an old item","Recycle an old iphone","Go cycling with your family!","Watch The Story of Stuff","Create an Earth Jar"], questDescriptions: ["","","","","","","",""]),
    Level(levelNumber: 5, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 6, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 7, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 8, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 9, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 10, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 11, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 12, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 13, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 14, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 15, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 16, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 17, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 18, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 19, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 20, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 21, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 22, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 23, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 24, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 25, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 26, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 27, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 28, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 29, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 30, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 31, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 32, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 33, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 34, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 35, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 36, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 37, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 38, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 39, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 40, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 41, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 42, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 43, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 44, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 45, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 46, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 47, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 48, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 49, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 50, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 51, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 52, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""]),
    Level(levelNumber: 53, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""],
    Level(levelNumber: 54, questNames: ["", "", "", "", "", "", "", ""], questDescriptions: ["", "", "", "", "", "", "", "", ""])
    ]
    
    
    
    /*
    the "create an Earth jar" challenge can be moved to level 5 onwards, it's pretty hard
    https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiAm_3horPtAhUadCsKHQLUB6YQwqsBMAF6BAgDEAM&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D9GorqroigqM%26vl%3Den&usg=AOvVaw01ydigrirzfFBXb4Qk32Xj
    link to the story of stuff
*/
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Levels", for: indexPath) as! ProgressTableViewCell
        
        cell.numberView.layer.cornerRadius = cell.numberView.frame.height/2
        cell.numberView.backgroundColor = .red
        cell.numberLabel.text = String(indexPath.row + 1)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
