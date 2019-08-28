//
//  Home.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class Home:Vue,V_ViewControllerProtocol,POSTProtocol{
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
            
            switch index{
                
            case 0:
                Router.push(VueTextDetails(), nil, nil)
            case 1:
                Router.push(VueIfDetails(), nil, nil)

            case 2:
                Router.push(VueOnDetails(), nil, nil)

            case 3:
                Router.push(VueBindDetails(), nil, nil)

            case 4:
                Router.push(VueForDetails(), nil, nil)

            default:
                return
            }            
            
            
        }
    }
  
    func POSTHttpWithData(_ httP: POSTProtocol, _ data: Any) {
        let strs = ["v_text","v_show","v_on","v_model","v_for"]
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

/**
 1.v_text
 2.v_if
 3.v_image
 4.v_on
 6.v_input
 7.v_array
 8.v_index
 10.组件
 11.依赖倒置
 12.AOP
 13.总结
 **/
