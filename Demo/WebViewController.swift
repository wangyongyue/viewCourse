//
//  WebViewController.swift
//  Demo
//
//  Created by apple on 2019/8/29.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
import SnapKit
class WebViewController: UIViewController {

    var m:Vue?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let webView = UIWebView.init(frame: self.view.bounds)
        self.view.addSubview(webView)
        webView.snp.makeConstraints { (make) in
            
            make.top.equalTo(64)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }

        let path = Bundle.main.bundlePath
        let url = URL.init(fileURLWithPath: path)
        let htmlPath = Bundle.main.path(forResource:"code", ofType:"html")
        let htmlContent = try!String.init(contentsOfFile: htmlPath!)
        webView.loadHTMLString(htmlContent, baseURL: url)
       
    }
    

}
