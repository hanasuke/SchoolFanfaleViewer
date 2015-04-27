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

  var targetUrl = "http://www.yahoo.co.jp/"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.

    loadTargetUrl()
  }

  func loadTargetUrl() {
    
    let requestUrl = NSURL(string: targetUrl)
    let request = NSURLRequest(URL: requestUrl!)
    
    webView.loadRequest(request)
    //webView.scalesPageToFit = true
  }

}

