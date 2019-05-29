//
//  AMBaseController.swift
//  AMSwift
//
//  Created by gyh on 2019/4/10.
//  Copyright © 2019 gyh. All rights reserved.
//  基类控制器

import UIKit

class AMBaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupView()
    }
    
    
    func setupView() {
        self.view.backgroundColor = UIColor.white
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
