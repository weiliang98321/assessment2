//
//  DetailViewController.swift
//  Week2Assessment - (Wei Liang)
//
//  Created by Tan Wei Liang on 18/08/2017.
//  Copyright © 2017 TWL. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var launchDateLabel: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var launchDateTextField: UITextField!
    @IBOutlet weak var appleImageView: UIImageView!
    
    @IBOutlet weak var editBtn: UIButton!
    @IBOutlet weak var doneBtn: UIButton!
    
    var apple : Apple = Apple()
    var delegate : DetailViewControllerDelegate?
    
    
    @IBAction func changeTitleButton(_ sender: Any) {
        
        delegate?.changeTitleTo(newName: apple.name)
        
        
        
    }
    @IBAction func ViewWiki(_ sender: Any) {
        
    }
    
    @IBAction func edit(_ sender: Any) {
        
        nameLabel.isHidden = true
        launchDateLabel.isHidden = true
        
        nameTextField.isHidden = false
        launchDateTextField.isHidden = false
        
        editBtn.isHidden = true
        doneBtn.isHidden = false
        
        

        
        
        
        
        
        
    }
    @IBAction func doneBtnTapped(_ sender: Any) {
        
        
        nameLabel.isHidden = false
        launchDateLabel.isHidden = false
        
       
        nameTextField.isHidden = true
        launchDateTextField.isHidden = true
        
        editBtn.isHidden = false
        doneBtn.isHidden = true
        
        
        
        nameLabel.text = nameTextField.text!
        launchDateLabel.text = launchDateTextField.text!
        
        apple.name = nameLabel.text!
        apple.launchDate = launchDateLabel.text!
        
        self.title = apple.name
        
    }
    
    
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GotoWikiSegue" {
            let dest = segue.destination as? WebViewController
            dest?.apple = apple
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = apple.name
        launchDateLabel.text = apple.launchDate
        appleImageView.image = apple.image

        self.title = apple.name
        
        
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

    
}

protocol DetailViewControllerDelegate {
    func changeTitleTo(newName : String)
}







