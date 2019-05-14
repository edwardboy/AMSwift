//
//  Constant.swift
//  AMSwift
//
//  Created by gyh on 2019/4/10.
//  Copyright © 2019 gyh. All rights reserved.
// 宏定义文件

import UIKit

/* 一、宏定义（无参数） */
let kScreenWith = UIScreen.main.bounds.size.width
let kScreenHeight = UIScreen.main.bounds.size.height

let isiPhoneX = (kScreenHeight == 812.0 || kScreenWith == 896.0) ? true : false

// NavBar
let kNavHeight = isiPhoneX ? 88.0 : 64.0
let kStatusBarHeight = isiPhoneX ? 44.0 : 20.0

// tabBar
let kTabBarHeight = isiPhoneX ? 83.0 : 49.0

// safe area
let kSafeAreaTop = isiPhoneX ? 24.0 : 0
let kSafeAreaBottom = isiPhoneX ? 34.0 : 0

let kiOS7 = Double(UIDevice().systemVersion)! >= 7.0 && Double(UIDevice().systemVersion)! < 8.0 ? true : false

/* 主色调 */
let kThemeColor = UIColor.hexadecimalColor(hexadecimal: "0x8c8c8c")
let kNormalColor = UIColor.hexadecimalColor(hexadecimal: "0xff0d86")

/* 二、宏定义（有参数） */
// 本地化
func AMLocalized(string:String) -> String {
    return NSLocalizedString(string, comment: string)
}

