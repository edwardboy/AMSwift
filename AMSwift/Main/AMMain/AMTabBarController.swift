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
        
        setupView()
        
        setupViewControllers()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print(self.navigationController?.navigationBar.subviews)
    }
    
    /** 设置界面 */
    func setupView() {
        
        self.view.backgroundColor = UIColor.white
        
        self.navigationController?.navigationItem.leftBarButtonItem = nil
        
        print("self.navigationController?.navigationBar.subviews:\(self.navigationController?.navigationBar.subviews)")
        
        self.tabBar.backgroundColor = UIColor.white
    }
    
    /** 设置子控制器 */
    func setupViewControllers(){
        
        let norColor = kThemeColor
        let selColor = kNormalColor
        
        let home = addChild(AMHomeController(), title: AMLocalized(string: "AM_Home_title"), normalColor: norColor , selColor: selColor, norImgName:"tabbar_home_nomol", selImgName:"tabbar_home_select");
        let planting = addChild(AMPlantingController(), title: AMLocalized(string: "AM_Planting_title"), normalColor: norColor , selColor: selColor, norImgName:"tabbar_discovery_nomol", selImgName:"tabbar_discovery_select");
        let beauty = addChild(AMBeautyController(), title: AMLocalized(string: "AM_Beauty_title"), normalColor: norColor , selColor: selColor, norImgName:"tabbar_cosmetology_nomol", selImgName:"tabbar_cosmetology_select");
        let shop = addChild(AMShopController(), title: AMLocalized(string: "AM_Shop_title"), normalColor: norColor , selColor: selColor, norImgName:"tabbar_shoppingCart_nomol", selImgName:"tabbar_shoppingCart_select");
        let profile = addChild(AMProfileController(), title: AMLocalized(string: "AM_Profile_title"), normalColor: norColor , selColor: selColor, norImgName:"tabbar_mine_nomol", selImgName:"tabbar_mine_select");
        
        self.viewControllers = [home,planting,beauty,shop,profile]
    }
    
    
    func addChild(_ childController: UIViewController, title: String, normalColor:UIColor, selColor:UIColor, norImgName:String, selImgName:String) -> AMNavigationController{
        
        childController.tabBarItem.title = title
        childController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:normalColor,NSAttributedString.Key.font:UIFont.init(name: "PingFangSC-Medium", size: 12) as Any], for: .normal)
        
        childController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:selColor,NSAttributedString.Key.font:UIFont.init(name: "PingFangSC-Medium", size: 12) as Any], for: .selected)
        
        childController.tabBarItem.image = UIImage.init(named: norImgName)?.withRenderingMode(.alwaysOriginal)
        childController.tabBarItem.selectedImage = UIImage.init(named: selImgName)?.withRenderingMode(.alwaysOriginal)
        
        let nav : AMNavigationController = AMNavigationController(rootViewController:childController)
        
        return nav
    }
    
}
