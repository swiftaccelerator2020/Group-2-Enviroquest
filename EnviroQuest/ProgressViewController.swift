//
//  ProgressViewController.swift
//  EnviroQuest
//
//  Created by Akshara Mantha on 23/11/20.
//

import UIKit

class ProgressViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 300
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
