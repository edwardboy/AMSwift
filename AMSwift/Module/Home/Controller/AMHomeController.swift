//
//  AMHomeController.swift
//  AMSwift
//
//  Created by gyh on 2019/4/10.
//  Copyright © 2019 gyh. All rights reserved.
//

import UIKit

class AMHomeController: AMBaseController {
    
    /** 导航栏 */
    let navigationBar = UIView()
    
    var userNameLabel = UILabel()
    var userNameTxf = UITextField()

    var userPwdLabel = UILabel()
    var userPwdTxf = UITextField()
    
    var loginBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
    }
    
    /** 设置界面 */
    override func setupView() {
        self.view.backgroundColor = UIColor.green
        
        userNameLabel.text = "用户名："
        userNameTxf.placeholder = "请输入用户名"
        
        userPwdLabel.text = "密码："
        userPwdTxf.placeholder = "请输入密码"
    }
}
