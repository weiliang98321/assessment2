//
//  Apple.swift
//  Week2Assessment - (Wei Liang)
//
//  Created by Tan Wei Liang on 18/08/2017.
//  Copyright © 2017 TWL. All rights reserved.
//

import Foundation
import UIKit




class Apple {
    var name : String = "No Name"
    var launchDate : String = ""
    var image : UIImage = UIImage(named: "iPhone SE") ?? UIImage()
    var url = URL(string: "https://en.wikipedia.org/wiki/IPhone_7")
    
    init () { }
    
    init(name: String, launchDate : String, image: String, urlString: String) {
        self.name = name
        self.launchDate = launchDate
       
        if let appleImage = UIImage(named: image){
            self.image = appleImage
        } else {
            self.image = UIImage()
        }
        
        self.url = URL(string: urlString)

    
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
