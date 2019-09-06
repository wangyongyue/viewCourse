//
//  Ios.swift
//  Demo
//
//  Created by apple on 2019/8/21.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit
import VueSwift
class Ios:Vue,V_ViewControllerProtocol,POSTProtocol{
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
                Router.push(IosTextDetails(), nil, nil)
            case 1:
                Router.push(IosIfDetails(), nil, nil)
                
            case 2:
                Router.push(IosImageDetails(), nil, nil)
                
            case 3:
                Router.push(IosOnDetails(), nil, nil)
                
            case 4:
                Router.push(IosInputDetails(), nil, nil)
                
            case 5:
                Router.push(IosArrayDetails(), nil, nil)
                
                
            default:
                return
            }
            
        }
    }
    
    func POSTHttpWithData(_ httP: POSTProtocol, _ data: Any) {
        let strs = ["文本渲染 v_text","条件语句 v_if","图片渲染 v_image","事件传递 v_on","双向绑定文本输入 v_input","列表数据 v_array 列表事件传递  v_index"]
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
