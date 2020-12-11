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
    var theLevels = [Level(levelNumber: 1, questNames: ["Switch off lights that are not needed or used","Reuse plastic bags","Say no to straws!"],questDescriptions:[
                                "A simple but effective act! Many times, people forget to turn off the lights even though they are not in use. This, compounded globally, actually leaves a huge impact on our energy consumption. However, if everyone can do this simple act, we can take our first step towards saving our planet!/nTask: Switch off lights that are not in use. Take a photo of the light switched flipped to off. Simple but sweet!",
                                "You know those plastic bags you receive when going to the market or shopping? Don't throw them out immediately! Plastic is the number one source of pollution, but you can avoid throwing away so many plastic bags by reusing the ones you've got! Besides, plastic bags can be useful for many things. Try it!/nTask: Reuse a plastic bag. Take a photo of the plastic bag being used for something else! :)",
                                "Oh, you've heard of this one. Restaurants all over the globe getting rid of their straws. But why??? It's so annoying! However, straws can be a major pollution. Plastic, small, easy to forget. 500 millions straws are used in a single day! Go out there to some restaurant and do you part by not using a straw. Maybe one less marine creature will be suffocated, thanks to you!\nTask: Forgo the straw. Drink straight from the cup! Take a selfie with your straw-free drink!"
                                ]),
                           Level(levelNumber: 2, questNames: ["Recycle an empty plastic bottle", "Go for a walk at a park", "Use a cloth bag when shopping instead of a plastic bag"],
                                               questDescriptions:[
                                "Ahhh, plastic bottles. How many people just toss these on the beach, or on the floors of parks? Yet, plastic bottles can be remade for many purposes and things. Did you know that recycled plastic bottles have been made into shirts, fleece jackets and so on? So why not contribute? Toss that little thing into a nearby recycling bin and wish it good luck!\nTask: Recycle a plastic bottle. Take a photo of the bottle in front of the recycling bin.",
                                "Take a break from the electronics, the busy traffic, and the stressful work. Go take a walk in the park! Stroll among the trees, with leaves rustling gently as the breeze combs through your hair. Inhale the fresh air as grass and ferns dance along rhythmically, and close your eyes and appreciate the chiming songs of birds. Bend over the nearby lake and admire the shimmering reflection of the cloud-dotted sky.... unless it's raining, of course.\nTask: Take a walk in the park! It's a bonus if you go with your family too. Take a picture there!",
                                "Okay, we have to admit, clothe bags are far cuter than plastic bags! But besides that, clothe bags can be reused, are biodegradable, and definitely is worth the price! When you go shopping, instead of taking a plastic bag, go use a reusable clothe bag! Whether it's for shopping, or buying groceries, a clothe bag can always do the job!\nTask: Use a cloth bag instead of plastic bags when you go shopping. Take a selfie with your reusable clothe bag!"
                                ]),
        Level(levelNumber: 3, questNames: ["Clear all your spam emails!","Go vegan for 3 days!", "Turn off appliances at the main sockets if they are not in use"], questDescriptions: [
                                "You may be surprised, but clearing all these unnecessary emails will actually be saving our planet in a small way! Did you know that every old email stored in your inbox is using up energy? Decluttering your inbox is a quick and easy way to reduce your electricity consumption and shrink your carbon footprint. \nTask: Clear your inbox and rid all the spam emails. Don't forget to take a picture of your clean and green inbox!",
                                "Now, if you're vegan, you'll do amazingly well for this one! Of course, meat is good to eat. It provides us with important things like proteins, and tastes delicious! However, the farming of animals harms the environment. It contributes to land and water degradation, biodiversity loss, acid rain, coral reef degeneration and deforestation. Nowhere is this impact more apparent than climate change – livestock farming contributes 18% of human produced greenhouse gas emissions worldwide. Hence, a few days going vegan would be good! \nTask: Go vegan for 3 days and do some research about it. Remember to take a picture of one of your meals!",
                                "This one is as easy as ABC. On your way out of a room, take the extra effort to turn off all your appliances, be it the fan, the air conditioner, the lights, and more! This saves electricity and the environment will definitely have it better. \nTask: Turn off the electric appliances when you leave your room or house. Don't forget to take a selfie of yourself saving electricity!"]),
        Level(levelNumber: 4, questNames: ["Plant a seed","Recycle an old iPhone","Go cycling with your family!",], questDescriptions: [
            "Plants are amazing! They are the number one factor that gets rid of carbon dioxide, and produces fresh, clean oxygen for us to breathe in! However, nowadays, many trees are being cut down to make space for buildings and housing, or just for the wood. Not only is this damaging to the climate, but this eliminates the natural habitats of much biodiversity! Do your part by planting a seed!\nTask: Plant a seed. Anywhere! In your backyard, in a small pot... Just take a picture of it!",
            "E-waste. E-waste, or electronic waste, refers electrical and electronic equipment that’s outdated, unwanted, or broken. But why is this a problem? Well, E-waste contains a huge amount of toxic chemicals, like mercury, lead and so on. If improperly handled, these toxic chemicals can end up in rivers, the ground or so on. So instead of throwing your old phone, why don't you sell it or visit an e-waste recycling event to recycle it properly? \nTask: Recycle an old iPhone, or really any old device you have. Take a picture of yourself with that device!",
            "Yep! Another outdoors trip! However, this time, why not go exercise with your family as well? Not only does this let you all take a break from our electronics, but you will have the time to breathe in the fresh air and keep healthy! After all, this allows less energy to be spent on your electronic devices and you can appreciate the scenery. Good for family bonding and the environment. Win-win!\nTask: Go cycling with your family! Whether at the park, or just downstairs, go ahead and do it! Don't forget to take a group photo!"]),
        Level(levelNumber: 5, questNames: ["Create a Bio Jar", "Watch The Story of Stuff", "Make art out of your trash!",], questDescriptions: [
            "Have you heard of a bio jar? Well, basically, you are creating a little ecosystem in a jar. This not only is nice for you to better understand how the biosphere work, but also makes good decoration in your house! There are many different ways to make one and things you can put inside a bio jar. If you'd like, you can create a simple one by following this link : https://kidzeum.org/learning/step-by-step/biosphere-in-a-jar . If you'd like a more advanced one, go ahead and google a better tutorial!\nTask: Create a bio jar and take a picture of it!",
            "The Story of Stuff. What happens to the rubbish you throw away? What happens to that little plastic bag you threw onto the ground? What happens after the trash is taken away? Find out by watching The Story of Stuff! The Story of Stuff is a short animated documentary about the lifecycle of material goods. The documentary promotes sustainability and is definitely a good show to watch! Go ahead and google for the video. You can find it on youtube, on its own website and so on. Have fun!\nTask: Watch The Story Of Stuff and take a selfie!.",
            "Alright, we know what you must be thinking. Trash??? It sounds unhygienic doesn't it? But  if you look harder, a good amount of your trash can actually be turned into a beautiful piece of art. Cool, isn't it? Make sure you use trash that can be salvaged and reused! \nTask: Make some pretty portraits or pictures out of your trash, then host an art show for your family! Snap a picture of the gallery of works!"]),
        Level(levelNumber: 6, questNames: ["Measure your weekly trash output!", "Take public transport instead!", "Create an environmental online challenge"], questDescriptions: ["Yes, you heard us right. Measuring your weekly trash output may seem a little dry, but it's very important if you want to control and regulate the amount of trash your family contributes to! This way, you know how much trash you need to cut back on. Feel free to involve your family too! \nTask: Make a chart on your family's weekly trash output and snap a picture of it!",
            "With all the traffic in the world, we are producing so much greenhouse gases everyday! In fact, in 2018, greenhouse gas emissions from transportation accounted for about 28.2 percent of total U.S. greenhouse gas emissions, making it the largest contributor of U.S. greenhouse gas emissions. However, more use of public transportation can help reduce air pollution. Public transportation produces far fewer quantities of air pollutants per passenger mile. So try it!\nTask: Take public transport for one day! Take a selfie as you go around the country!",
            "What else can you do to help the environment? Is there something fun that you can do with your friends? Come up with an environmental challenge and post it online! Whether on Instagram or Facebook, go ahead and post your unique challenge and footage of yourself doing it. Fun for yourself and everyone else! Make sure it is not copyright!\nTask: Create an online environmental challenge. Screenshot it!",]),
        Level(levelNumber: 7, questNames: ["", "Buy organic vegetables / fruits!", "Calculate your family’s carbon footprints", "Find the nearest recycling bin to your home"], questDescriptions: [
            "'Wait, why?' you say. 'Organic vegetables and fruits are more expensive than the normal ones!' Well, yes, but did you know that organic farming is better for the environment? Organic farming practices may reduce pollution, conserve water, reduce soil erosion, increase soil fertility, and use less energy. Farming without synthetic pesticides is also better for nearby birds and animals as well as people who live close to farms. By supporting these environmentally friendly farms, you would be one step closer to helping the environment!\nTask: Buy organic vegetables, and take a selfie!",
            "Want to know how much carbon your family is producing? Go calculate your family's carbon footprint! To calculate the carbon dioxide emitted by the total amount of electricity generated (in kWh) utilised by you, first add up the electricity bills for the year and then multiply it by 1.22, which is the average amount of CO2 in pounds that is emitted per KWh of electricity generated. Or, if you're lazy, just go search online for a carbon footprint calculator!\nTask: Calculate your family's carbon footprint and snap a pic of it!",
            "Yep! Every house should have a nearby recycling bin. Where's yours? Go around your neighbourhood and find the one nearest to you. And if you have anything to recycle, that's a perfect opportunity! Do remember to sort your rubbish properly!\nTask: Find the nearest recycling bin to your house. Snap a picture of it!",]),
        Level(levelNumber: 8, questNames: ["Volunteer for a clean up", "Make a terrarium", "Make a compost bin for your kitchen"], questDescriptions: ["Oh no! Look at all the pollution on the beach! The bottle caps dotting the coast, plastic bags bobbing up and down in the sea... It really is a mess! Or maybe it is a park that is dirty, with straws 'decorating' the withering grass. No matter the place, it would definitely help if you could clean it up! By picking up litter and cleaning up places, not only are we keeping these public places sanitary, but we also prevent land pollution. Why not give it a try!\nTask: Sign up for a public clean up. Take a picture of yourself contributing to society!",
            "Well, there are actually quite a few benefits of terrariums. Did you know they help grow plants that would be difficult to grow in dry air? They also provide a confined space for a garden – a 'mini garden', if you will. And hey, it also make a beautiful piece of decor for your home, especially since its extremely low-maintenance. \nTask: Make a terrarium, it's as simple as that! Design it however you like, but don't forget to take a picture of your little creation!",
            "Hoho! This one's interesting. Did you know that composting not only adds nutrients to the soil, but also introduces valuable organisms to the soil? Microorganisms, such as bacteria, fungi, and protozoa, decompose organic material. It's great for the environment! And if you're really up to it, go ahead and learn about how the process of decomposition works! \nTask: Make a compost bin and snap a picture of you using it!"]),
        Level(levelNumber: 9, questNames: ["Make a pledge to reduce your plastic use", "Measure your trash output for one day", "Re-organisise your fridge"], questDescriptions: ["Hoho! Time to get your creative juices flowing! Make a pledge to reduce your plastic use. What will you do? Will you use a clothe bag when shopping from now on? Will you forgo using those zip lock bags? Go ahead and search up the internet for ideas, or reflect upon how you've been using plastic. Have fun!\nTask: Take a photo of your pledge!",
            "According to the EPA, the average American person will produce about 5.91 pounds of trash, with about 1.51 pounds being recycled; 4.40 pounds is the rough average daily waste per person. Would you like to know how much trash your family throws out everyday? At the end of the day, go ahead and weigh all the trash you have collected. How much is it? If it's higher than the average, perhaps you should start thinking about how to change that! If it is not, good job, but keep up the good work!\nTask: Measure your trash output for one day. Snap a picture of the weight!",
            "Food waste is a huge problem globally. Roughly one-third of the food produced in the world for human consumption every year gets lost or wasted. How can you help? Well, let's start with the fridge. For example, make sure the fridge temperature stays constant, below 40 degrees Fahrenheit. This allows food to spoil less easily. Secondly, you can tend to it everyday. After using food items, move things around to see what needs to be used. What else can you do? Go ahead and do more research!\nTask: Reorganise your fridge to ensure you produce minimal food waste. Snap a picture of your efforts!"]),
        Level(levelNumber: 10, questNames: ["Try to repair something","Bring your own cutlery","Take a shower that is shorter than 10 minutes"], questDescriptions:["Whether a toy, gadget or a picture frame, there are instructions on how to fix anything on YouTube! Discuss how repair cuts waste while you fix your item. Besides, repairing something is actually a form of recycling. Way to go! /nTask: Repair something old or broken you have lying in your home. Take a picture of the repaired item!",
            "Restaurants nowadays use a lot of disposable cutlery. This is because those are cheap, they don't need to wash those, and they are just handy in general. However, styrofoam boxes and plastic forks are not biodegradable! In fact, styrofoam takes and estimated 500 years to decompose! Even if they do not use disposable cutlery and utensils, the amount of water used to wash those would still be bad enough. Why not make it easier for both the Earth and the people working there by bringing your own cutlery?\nTask: Bring your own cutlery when you go out to eat! Take a selfie with your meal :)",
            "OH MAN! Look at that water bill! Why is it so high? You think back... oh no, you've been spending so much time in the shower.\nPeople love nice warm showers. Who wouldn't? Especially on cold nights, a long, warm shower is all we need to relax. However, do you really need to spend so much time in the shower? This wastes much water, and brings that bill up high! Why not shorten it?\nTask: Time yourself! Take a bath shorter than ten minutes. Take a picture of that timer!"]),
        Level(levelNumber: 11, questNames: ["Buy something second hand", "Adjust your home temperature", "Adjust your home temperature"], questDescriptions:["You know that saying, 'one man's trash is another man's treasure'? Well, maybe instead of buying something that you want which is brand new, why not reuse someone else's perfectly fine item? A lot of things can be sourced second hand. Things that have a short usage period are in fantastic condition and also at a fraction of the price. This saves you money and helps to reduce packaging materials! \nTask: Snap a photo of you and your second hand item!","Did you know that adjusting the temperature in your home by just one degree can save you 10% on your energy use over the year? This is indeed a great help for the planet! Where possible, set a timer so your heating/cooling doesn’t need to be on when you aren’t home. \nTask: Don't forget to take a picture of you adjusting your temperature at home!","Yeesh! Junk mail doesn't seem like much, but collectively, we actually waste tons of paper! You can register for services that reduce the amount of junk mail you receive. Not only is this beneficial to the environment, but let’s face it, none of us want that junk mail anyway – the clue is in the name! \nTask: Take a photo of you unsubscribing or registering for junk mail reduction services!"]), //right sorry my bad
        Level(levelNumber: 12, questNames: ["Make a solar oven", "Repurpose old t-shirts ", "Make your own produce bag"], questDescriptions:["Using solar energy can be pretty expensive... for companies and households. But making a solar oven is quite easy for you! You just need a cardboard box, aluminium foil and your imagination! The solar oven can harness the sun's power and heat up to about 200°F! It even works on partly sunny days. You can make some delicious food with it! \nTask: Make some food in your solar oven and take a picture with it!", "Old t-shirts can seem pretty useless once you've outgrown them. But don't throw them away yet! They can have a multitude of uses, and not as clothing items! You can make t-shirt yarn out of them by cutting them up in the right way, make a no-sew t-shirt bag that looks really trendy or even cut squares out of them to make rags! \nTask: Snap a pic of you with your reused t-shirt craft!", "Imagine yourself, in the grocery store. You're picking out the freshest fruits and veggies. But wait! You look around, only to discover that you can only use plastic bags to hold your fresh produce. Now that isn't the best option for you OR the environment. Not only are plastic bags thin and easily torn, making them single use, they also expose your food to the dangers of plastic. So why not make your own reusable bag? \nTask: Take a photo of you with your very own produce bag!"]),
        Level(levelNumber: 13, questNames: ["Clean a beach with your family", "Make a 'Save the Earth' Poster", "Use recycled toilet pape"], questDescriptions:[" Okay okay, I know this sounds like a lot, but trust us, it's definitely worth a try. All you need are some trash bags and a couple of tongs and you're all set to go! Take a walk along the beach with you family and, along the way, pick up trash you see on the ground! And get this, you're not only helping our planet, you get to spend quality time with your family too. \nTask: Take a picture of your experience together with your family!", "If you love designing, this quest is definitely the one for you. Make 'Save the Earth' Posters and pin them around your neighbourhood. And if you can, use recycled paper too! What's better than raising awareness  to people around you, am I right? \nTask: Snap a photo of your posters around the neighbourhood!", "Yes, you heard us right. Recycled toilet paper is not toilet paper that has been used, it's toilet paper that has been made with recyclable materials! It's not only eco-friendly, it also saves energy, since the production of paper and cardboard products made from recycled paper uses 50% less energy and 90% less water than making them from raw materials. \nTask: Take a selfie of you and your eco-friendly toilet paper!"]),
        Level(levelNumber: 14, questNames: ["Visit a nature reserve", "Observe the biodiversity in your neighbourhood", "Use energy efficient light bulbs"], questDescriptions:["Nature reserves are areas set aside for the purpose of preserving certain animals, plants, or both. While this sounds similar to other parks, the difference is that nature reserves are usually smaller and have the sole purpose the protection of nature. On the other hand, common parks often have other purposes, like to attract tourists or just be a common utility for nearby neighbourhoods. Nature reserves are very important as they conserve the little biodiversity around us. Why not visit one? \nTask: Visit a nearby nature reserve. Submit a photo of yourself there!", "How many types of animals and plants can you find around your neighbourhood? Have you ever noticed before? Even in modern times, there is much biodiversity all around us. Can you find some around your neighbourhood? Biodiversity is very important to our ecosystem, for it ensure that our ecosystem does not become unstable. So how many types of organisms can you find? Go ahead and take a walk around you neighbourhood and take pictures of wildlife you find. \nTask: Observe the biodiversity in your neighbourhood. Submit your most interesting photo!", "What are the uses of energy efficient light bulbs? Well, they serve the exact same purpose as normal light bulbs, but energy saving light bulbs (or energy-efficient light bulbs) last up to 12 times as long as traditional bulbs, as it uses less electricity to emit the same amount of light as a traditional bulb. They're an energy efficient option, helping you to reduce the carbon footprint of your home. It also reduces your energy bill! That's more savings for you!\nTask: Use energy efficient light bulbs in your house. Take a photo of your fresh new light bulbs!"]),
        Level(levelNumber: 15, questNames: ["Go camping", "Ride your bike or walk", "Donate to conservation projects"], questDescriptions:["Hey, do you hear that? It's Mother Nature calling you! Be it in your backyard, at a campsite or even in a forest, camping away from your home has many more benefits than you think. For one, you reduce your home electricity because, well, you're not using it! Camping is a great opportunity for having fun with your family while saving the environment. So, go! Be one with the environment! \nTask: Remember to snap a photo of your camping trip!", "Instead of riding in your car to get to places, why not give walking or riding your bike a try? The exhaust from a car releases hydrocarbons and nitrogen oxides, which together react with sunlight to increase ground-level ozone. Car exhaust also releases carbon monoxide, which threatens human health, and carbon dioxide, which contributes significantly to global warming. And hey, walking has so many benefits too! So go burn some calories, enjoy the world around you and save the Earth! \nTask: Take a selfie of yourself walking instead of taking a car!", "This one's easy, and there's honestly not much to explain. Be it programmes to conserve endanger species or nature parks, donating a sum of money, big or small, will get them one step closer to their goal! Way to go, for helping the Earth! \nTask: Take a photo of your donation to help these important conservation projects!"]),
        Level(levelNumber: 16, questNames: ["Write to your government about wildlife conservation", "Recycle your grass", "Turn the faucet on at a fraction of the volume"], questDescriptions:["Grab a pen and paper or better, your laptop! All you gotta do send a letter or email to your region's officials and encourage them to support wildlife-friendly policies. Well, you don't actually have to write about wildlife specifically, but we do encourage you to write about environmentally-friendly policies, and do it from the heart! Don't worry if your letter doesn't get implemented. It's still important that you tried! \nTask: Don't forget to take a picture of your letter!", "Before you go 'what?', let us explain. You can recycle your grass! (Yes, you heard us right.) When you mow your grass, cut it to 2 inches, and leave the clippings in the lawn. You won't have to water your lawn as much and the clippings make a great organic fertiliser! So you not only save money on fertiliser, you're healing our planet in your own small way. The Earth thanks you! \nTask: Take a photo of yourself mowing your lawn and doing the environment a favour! (Remember to leave the clippings in the lawn!", "ay! Another simple way to conserve water, energy and electricity in your home. Instead of blasting your faucet at full volume, turn it on at  half or less. When you use your tap, lots of water is still relatively clean when it goes into the drain. So do your part to save that water! Every drop counts. \nTask: Go snap a picture of you using your faucet at a fraction of the volume!"]),
        Level(levelNumber: 17, questNames: ["Contribute to an environmental charity", "Watch an animal documentary", "Teach someone about recycling"], questDescriptions:["There are tons of environmental charities out there! Environmental Defense Fund, Sierra Club Foundation... How can you help? Well, why not contribute to those charities? There are many things you can do to help out with those charities, whether volunteering to help out, organising a fund raiser for them or just donating a sum of money! Not only would this help the environment, but you are also contributing back to society! Win-win!\nTask: Contribute to an environmental; charity and take a picture of your efforts!", "Animals are fascinating. Many of them are so different, whether the snakes that can glide 50 metres through the air or huge lions preying on smaller animals. What can you find out about them? Well, a documentary might help! By learning more about our fellow animals, we can greater understand their needs and why we should protect them. Feel free to watch this with your friends or family as well!\nTask: Watch an animal documentary and take a selfie. Have fun!", "Time to spread the word to others! Whether your friend, relative or so on, do educate them more about recycling. How do you sort your rubbish? What things can be recycled? Do your research and teach it to someone. Not only will this help yourself learn more about recycling, but you can also spread the word to others and help the environment together!\nTask: Teach someone about recycling, and take a we-fie!"]),
        Level(levelNumber: 18, questNames: ["Use the power of your network to inspire others to act", "Visit an animal shelter", "Listen to an environmental activist"], questDescriptions:["If you are active on your social media accounts, you might enjoy this quest! Share a post on your views about climate change, endangered species or the environment! Whatever you decide to share your views on, it will definitely make some sort of impact on your followers or friends. Using your platform and network for a good cause and raising awareness will certainly influence others to do the same. See? It's that easy. \nTask: Screenshot your post that you have shared on your social media platform!", "Animal shelters play a vital role in our communities as they continuously work to reunite pets with their owners, shelter those in need and find new homes for animals that are lost, without a permanent home or for those animals that, for our own security, shouldn't be roaming our streets. Talk to some volunteers and get to know what they do. Educating yourself is one step closer to being 'Wildlife's Best Friend'! And hey, maybe you'll think of adopting a pet. \nTask: Snap a selfie of yourself on a trip to the animal shelter!", "Tune in to a YouTube video or a podcast to listen to what an environmental activist has to say. These advocates generally have been studying the environment and climate change for years! Wouldn't it help to get to know their point of view? Give their speeches a listen and understand where they are coming from. Who better to learn about the environment from than them? \nTask: Take a photo of yourself listening to the environmental activists' talks!"]),
        Level(levelNumber: 19, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 20, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 21, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 22, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 23, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 24, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 25, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 26, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 27, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 28, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 29, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 30, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 31, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 32, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 33, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 34, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 35, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 36, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 37, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 38, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 39, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 40, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 41, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 42, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 43, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 44, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 45, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 46, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 47, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 48, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 49, questNames: ["", "", ""], questDescriptions:["", "", ""]),
        Level(levelNumber: 50, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 51, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 52, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 53, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 54, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 55, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 56, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 57, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 58, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 59, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 60, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 61, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 62, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 63, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 64, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 65, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 66, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 67, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 68, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 69, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 70, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 72, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 73, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 74, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 75, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 76, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 77, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 78, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 79, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 80, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 81, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 82, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 83, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 84, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 85, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 86, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 87, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 88, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 89, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 90, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 91, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 92, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 93, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 94, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 95, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 96, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 97, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 98, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 99, questNames: ["", "", ""], questDescriptions:["", "", ""]),
//        Level(levelNumber: 100, questNames: ["", "", ""], questDescriptions:["", "", ""])
        ]
    
    
    
    /*
    the "create an Earth jar" challenge can be moved to level 5 onwards, it's pretty hard
    https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiAm_3horPtAhUadCsKHQLUB6YQwqsBMAF6BAgDEAM&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D9GorqroigqM%26vl%3Den&usg=AOvVaw01ydigrirzfFBXb4Qk32Xj
    link to the story of stuff
*/
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
        //fifty lah if not kanna die XD
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
