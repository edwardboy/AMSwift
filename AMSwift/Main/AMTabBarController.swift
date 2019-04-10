//
//  AMTabBarController.swift
//  AMSwift
//
//  Created by gyh on 2019/4/10.
//  Copyright © 2019 gyh. All rights reserved.
//

import UIKit

class AMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white

        setupViewControllers()
    }
    
    /** 设置子控制器 */
    func setupViewControllers(){
        
        let home = addChild(AMHomeController(), title: AMLocalized(string: "AM_Home_title"), normalColor: UIColor.lightGray, selColor: UIColor.orange);
        let home1 = addChild(AMHomeController(), title: AMLocalized(string: "AM_Home_title"), normalColor: UIColor.lightGray, selColor: UIColor.orange);
        let home2 = addChild(AMHomeController(), title: AMLocalized(string: "AM_Home_title"), normalColor: UIColor.lightGray, selColor: UIColor.orange);
        let home3 = addChild(AMHomeController(), title: AMLocalized(string: "AM_Home_title"), normalColor: UIColor.lightGray, selColor: UIColor.orange);
        
        self.viewControllers = [home,home1,home2,home3]
        
//        print("self.selectedIndex:\(self.selectedIndex)")
    }
    
    
    func addChild(_ childController: UIViewController, title: String, normalColor:UIColor, selColor:UIColor) -> AMNavigationController{
        
        childController.tabBarItem.title = title
        childController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.black], for: .normal)
        childController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.orange], for: .selected)
//        childController.navigationItem.title = title
        childController.tabBarItem.image = UIImage.init(named: "");
        childController.tabBarItem.selectedImage = UIImage.init(named: "")
        
        let nav : AMNavigationController = AMNavigationController(rootViewController:childController)
        return nav
    }

}
