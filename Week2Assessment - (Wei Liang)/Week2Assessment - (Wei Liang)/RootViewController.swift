//
//  RootViewController.swift
//  Week2Assessment - (Wei Liang)
//
//  Created by Tan Wei Liang on 18/08/2017.
//  Copyright © 2017 TWL. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
     var apples : [Apple] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let iPhoneSE = Apple(name: "iPhone SE", launchDate: "21st March 2017", image: "iPhone SE", urlString:"https://en.wikipedia.org/wiki/IPhone_SE")
        apples.append(iPhoneSE)
        
        let macbookPro13 = Apple(name: "MacbookPro13'", launchDate: "5th June 2017", image: "MacbookPro13'", urlString:"https://en.wikipedia.org/wiki/MacBook_Pro")
        apples.append(macbookPro13)
        
        let macbookPro15 = Apple(name: "MacbookPro15'", launchDate: "5th June 2017", image: "MacbookPro15'", urlString:"https://en.wikipedia.org/wiki/MacBook_Pro")
        apples.append(macbookPro15)
        
        let airPods = Apple(name: "AirPods", launchDate: "19th December 2016", image: "AirPods", urlString:"https://en.wikipedia.org/wiki/AirPods")
        apples.append(airPods)
        
        let iPhone7Plus = Apple(name: "iPhone7 Plus", launchDate: "16th September 2016", image: "iPhone7 Plus", urlString:"https://en.wikipedia.org/wiki/IPhone_7")
        apples.append(iPhone7Plus)
        
        
//        let randomApple = Apple()
//        apples.append(randomApple)
        
        tableView.reloadData()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

   
}

extension RootViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apples.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "appleCell",for: indexPath)as?
        AppleTableViewCell
        
            else { return UITableViewCell() }
        
        let apple = apples[indexPath.row]
        cell.nameLabel.text = apple.name
        cell.launchDateLabel.text = apple.launchDate
        cell.appleImageView.image = apple.image
        
        return cell
                                        }
    
    
    
}

extension RootViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedApple = apples[indexPath.row]
        
        let mainStoryboard = UIStoryboard(name: "Main",bundle: Bundle.main)
        
        guard let destination = mainStoryboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {return}
        
        destination.apple = selectedApple
        
        
        navigationController?.pushViewController(destination, animated: true)
        
        
        
    }
    
}









