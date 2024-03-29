//
//  BaseTabBarController.swift
//  Demo
//
//  Created by apple on 2019/7/2.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        addChildVC(childVC: Menu().v_viewController(), childTitle: "主页", image: Image.mine(), selectedImage: Image.mine_sel())
        addChildVC(childVC: Home().v_viewController(), childTitle: "Vue", image: Image.mine(), selectedImage: Image.mine_sel())
        addChildVC(childVC: Ios().v_viewController(), childTitle: "IOS", image: Image.mine(), selectedImage: Image.mine_sel())
        addChildVC(childVC: Android().v_viewController(), childTitle: "Android", image: Image.mine(), selectedImage: Image.mine_sel())

    }
    
    // 添加子控制器
    private func addChildVC(childVC: UIViewController, childTitle: String, image: UIImage?, selectedImage:UIImage?) {
        let navigation = BaseNavigationController(rootViewController: childVC)
        
        childVC.title = childTitle
        childVC.tabBarItem.image = image
        childVC.tabBarItem.selectedImage = selectedImage
        self.addChild(navigation)
        
    }
    


}

