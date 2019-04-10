//
//  HomeViewController.swift
//  AMSwift
//
//  Created by gyh on 2019/4/8.
//  Copyright © 2019 gyh. All rights reserved.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var listView:UITableView = UITableView(frame: .zero, style: .plain)
    var contents = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        
        setupData()
    }
    
    /** 设置界面 */
    func setupView(){
        
        self.title = NSLocalizedString("AM_Function_list", comment: "AM_Function_list")
        
        listView.dataSource = self
        listView.delegate = self
        listView.register(UITableViewCell.self, forCellReuseIdentifier: NSStringFromClass(UITableViewCell.self))
        self.view.addSubview(listView)
        
        listView.snp.makeConstraints { (make) in
            make.top.left.right.bottom.equalTo(self.view)
        }
    }
    
    func setupData(){
        contents.append("ViewController")
        contents.append("AMTabBarController")
    }

    /** UITableViewDataSource */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(UITableViewCell.self))!
        cell.textLabel?.text = contents[indexPath.row]
        return cell
    }
    
    /** UITableViewDelegate */
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let clsString = contents[indexPath.row]
        
        // 1.获取命名空间
        guard let clsName = Bundle.main.infoDictionary?["CFBundleExecutable"] else {
            print("命名空间不存在")
            return
        }
        // 2.通过命名空间和类名转换成类
        let cls : AnyClass? = NSClassFromString((clsName as! String) + "." + clsString)
        
        guard let clsType = cls as? UIViewController.Type else {
            print("无法转换")
            return;
        }
        
        self.navigationController?.pushViewController(clsType.init(), animated: true)
    }
}

//extension NSObject {
//    func swiftClassFromString(className:String) -> AnyClass! {
//        if let appName : String = Bundle.main. as! String? {
//            let classStringName = appName + "." + className
//            return NSClassFromString(classStringName)
//        }
//        return nil
//    }
//}
