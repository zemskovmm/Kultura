//
//  ViewController.swift
//  Kultura
//
//  Created by Michael on 19.04.23.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var frame = view.frame

        // Adjust the frame's Y position
        frame.origin.y += 50
        // Create the WKWebView instance
        webView = WKWebView(frame: frame)
        
        // Add the WKWebView as a subview of the main view
        view.addSubview(webView)
        
        if let url = URL(string: "https://appevent.ru/w/5038/?fbclid=PAAab-L7uQ6arMZBowwJSlW-spP3pisNqvEfjB-oBLhCfTL97tPb0mqPFL8tU") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}

