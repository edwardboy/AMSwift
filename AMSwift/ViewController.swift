//
//  ViewController.swift
//  AMSwift
//
//  Created by gyh on 2019/4/8.
//  Copyright © 2019 gyh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view, typically from a nib.
        
        test()
    }
    
    func test(){
        let optionalName : String? = "123"
        if let name = optionalName {
            print("name is :\(name)")
        }else {
            print("optionalName is nil")
        }
        
        
        let v = "red"
        switch v {
        case "a":
            print(v)
        default:
            print("a")
        }
    }

}

