//
//  WebViewController.swift
//  Week2Assessment - (Wei Liang)
//
//  Created by Tan Wei Liang on 18/08/2017.
//  Copyright © 2017 TWL. All rights reserved.
//

import UIKit

class WebViewController: UIViewController , UIWebViewDelegate {
    @IBOutlet weak var webView: UIWebView!
    
    
    var apple : Apple = Apple()
    
    
    
    @IBOutlet weak var loadingView: UIActivityIndicatorView!
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadingView.startAnimating()
        
        webView.delegate = self
        
        let productWiki = apple.url
        

        
        
        //loadUrl(with: "www.google.com")
        
        let request = URLRequest(url: productWiki!)
        
        
       
        
        webView.loadRequest(request)
    
        
        if request == request {
            loadingView.stopAnimating()
        }

        
    }
    
    func loadUrl(with string : String){

        loadingView.startAnimating()
        
        var prefixUrl : String = ""
        prefixUrl += "Https://"
        
        guard let url = URL(string: prefixUrl + string) else {
            print("Invalid UrlString : \(string)")
            return
        }
        let request = URLRequest(url: url)
        
        
        loadingView.stopAnimating()
        webView.loadRequest(request)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   }
