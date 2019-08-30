//
//  Android.swift
//  Demo
//
//  Created by apple on 2019/8/21.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class Android:Vue,V_ViewControllerProtocol,POSTProtocol{
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
            
            switch index{
                
            case 0:
                Router.push(AndroidTextDetails(), nil, nil)
            case 1:
                Router.push(AndroidIfDetails(), nil, nil)
                
            case 2:
                Router.push(AndroidImageDetails(), nil, nil)
                
            case 3:
                Router.push(AndroidOnDetails(), nil, nil)
                
            case 4:
                Router.push(AndroidInputDetails(), nil, nil)
                
            case 5:
                Router.push(AndroidArrayDetails(), nil, nil)
                
                
            default:
                return
            }
            
        }
    }
    
    func POSTHttpWithData(_ httP: POSTProtocol, _ data: Any) {
        
        let strs = ["v_text","v_if","v_image","v_on","v_input","v_array   v_index"]
        for value in strs{
            let m = T1Model()
            m.name = value
            self.array.append(m)
        }
        self.v_array(vId: ARRAYID) { () -> Array<VueData>? in
            
            return self.array
            
        }
        
        
    }
    func POSTHttpWithError(_ httP: POSTProtocol, _ error: String) {
        
        
    }
    
    
}
