//
//  ViewController.swift
//  SchoolFanfaleViewer
//
//  Created by naosuke on 4/27/15.
//  Copyright (c) 2015 Naoki Hanakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


  @IBOutlet weak var webView: UIWebView!

  var targetUrl = "https://mg.amebagames.com/"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    loadTargetUrl()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func loadTargetUrl() {
    
    let requestUrl = NSURL(string: targetUrl)
    let request = NSURLRequest(URL: requestUrl!)
    
    webView.loadRequest(request)
    //webView.scalesPageToFit = true
  }

}

