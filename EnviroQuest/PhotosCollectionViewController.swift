//
//  PhotosCollectionViewController.swift
//  EnviroQuest
//
//  Created by Akshara Mantha on 25/11/20.
//

import UIKit

private let reuseIdentifier = "PhotoCell"
public var shopItems = ["1","2", "3", "4", "5"]
public var shopItemLabels = ["Ten!","Richhh","Ultra Skip","Skip","Darkmode"]
public var currentCount = 0
public var inventory = ["randomobject1", "randomobject2"]
public var shopItemDescriptions = ["Ten: Shows that you have completed ten quests!", "Richhh: Shows that you are RICHHHH", "Ultra Skip: Allows you to skip a whole level", "Skip: Allows you to skip a quest", "Darkmode: The superior mode"]
public var shopCosts = [100, 300, 60, 20, 100]


class PhotosCollectionViewController: UICollectionViewController {
    @IBOutlet weak var stubbornImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stubbornImageView.contentMode = .scaleAspectFill
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 5
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as!PhotoCollectionViewCell
        cell.shopButton.setTitle(shopItemLabels[indexPath.row], for: .normal)
        cell.shopButton.layer.cornerRadius = 5
        cell.shopImage.image = UIImage(named:shopItems[indexPath.row])
        
        currentCount = indexPath.row
        // Configure the cell
    
        return cell
    }
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */
    override func collectionView(_ collectionView: UICollectionView,
      didSelectItemAt indexPath: IndexPath) {
        print("Cell \(indexPath.row) clicked")
        if gemCounter >= shopCosts[indexPath.row]{
            let alert = UIAlertController(title: "Buy this?", message: "You are buying \(shopItemLabels[indexPath.row]) for \(String(shopCosts[indexPath.row])) gems.", preferredStyle: .alert)
               
                           alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
                               print("The user chose Yes")
                            gemCounter -= (shopCosts[indexPath.row])
                            inventory.append(shopItemLabels[indexPath.row])
            
                           }))
               
                           alert.addAction(UIAlertAction(title: "No", style: .default, handler: { _ in
                               print("The user chose No")
                               
                           }))
        self.present(alert, animated: true, completion: nil)
        }else{
            let alert = UIAlertController(title: "Not enough gems!", message: "Complete more quests to get more gems!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in
                
              
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
                
      
    // Uncomment this method to specify if the specified item should be selected
//    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
//
//            let alert = UIAlertController(title: "Did you like the last joke?", message: "", preferredStyle: .alert)
//
//            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
//                print("The user chose Yes")
//                let alert2 = UIAlertController(title: "Yay! Thank you!", message: "🥰", preferredStyle: .alert)
//                alert2.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//                self.present(alert2, animated: true, completion: nil)
//            }))
//
//            alert.addAction(UIAlertAction(title: "No", style: .default, handler: { _ in
//                print("The user chose No")
//                let alert2 = UIAlertController(title: "What! You are awful", message: "😡", preferredStyle: .alert)
//                alert2.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//                self.present(alert2, animated: true, completion: nil)
//            }))
//
//        return true
//    }
//

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}