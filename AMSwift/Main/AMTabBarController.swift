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
        
        let norColor = UIColor.lightGray
        let selColor = UIColor.orange
        
        let home = addChild(AMHomeController(), title: AMLocalized(string: "AM_Home_title"), normalColor: norColor , selColor: selColor);
        let planting = addChild(AMPlantingController(), title: AMLocalized(string: "AM_Planting_title"), normalColor: norColor , selColor: selColor);
        let beauty = addChild(AMBeautyController(), title: AMLocalized(string: "AM_Beauty_title"), normalColor: norColor , selColor: selColor);
        let shop = addChild(AMShopController(), title: AMLocalized(string: "AM_Shop_title"), normalColor: norColor , selColor: selColor);
        let profile = addChild(AMProfileController(), title: AMLocalized(string: "AM_Profile_title"), normalColor: norColor , selColor: selColor);
        
        self.viewControllers = [home,planting,beauty,shop,profile]
        
        print("self.selectedIndex:\(self.selectedIndex)")
    }
    
    
    func addChild(_ childController: UIViewController, title: String, normalColor:UIColor, selColor:UIColor) -> AMNavigationController{
        
        childController.tabBarItem.title = title
        childController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:normalColor], for: .normal)
//        ,NSAttributedString.Key.font:UIFont.init(name: "PingFangSC-Medium", size: 14) as Any
        childController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:selColor], for: .selected)
//        ,NSAttributedString.Key.font:UIFont.init(name: "PingFangSC-Medium", size: 14) as Any
        childController.tabBarItem.image = UIImage.init(named: "");
        childController.tabBarItem.selectedImage = UIImage.init(named: "")
        
        let nav : AMNavigationController = AMNavigationController(rootViewController:childController)
        
        return nav
    }

}
