//
//  VueTextDetails.swift
//  Demo
//
//  Created by apple on 2019/8/28.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class VueTextDetails:Vue,V_ViewControllerProtocol,POSTProtocol{
    var array = [VueData]()
    
    func v_viewController() -> UIViewController{
        let vc = HomeViewController()
        vc.m = self
        vc.navigationItem.title = "home"
        return vc
        
    }
    
    override func v_start() {
        
        let params = TestHttp()
        params.id = 10
        POST.request(params:params, http: self)
        
        self.v_index(vId: INDEXID) { (index) in
            print(index)
        }
    }
    
    func POSTHttpWithData(_ httP: POSTProtocol, _ data: Any) {
        
       
        self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
            
            return CodeData().getVueTextCode()
            
        }
        
        
    }
    func POSTHttpWithError(_ httP: POSTProtocol, _ error: String) {
        
        
    }
    
    
}
