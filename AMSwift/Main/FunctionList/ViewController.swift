//
//  ViewController.swift
//  AMSwift
//
//  Created by gyh on 2019/4/8.
//  Copyright © 2019 gyh. All rights reserved.
//

import UIKit

enum PrinterError : Error{
    case outOfPaper
    case noToner
    case onFire
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view, typically from a nib.
        
//        test()
        
//        let printResponse = try? send(job: 1, toPrinter: "Never1 Has Toner")
//        print("printResponse:\(printResponse)")
        
//        do{
//
//        }catch PrinterError.noToner {
//            print("==-=-=-=-=-")
//        }catch {
//            print(error)
//        }
        
        
            testDefer()
        
    }
    
    func testDefer(){
        
        let fridgeIsOpen = fridgeContains("banana")
        print("fridgeIsOpen:\(fridgeIsOpen)")
        
    }
    
    func fridgeContains(_ food: String) -> Bool {
        var fridgeIsOpen = false
        let fridgeContent = ["milk", "eggs", "leftovers"]
        
        defer {
            fridgeIsOpen = false
        }
        fridgeIsOpen = true
        
        let result = fridgeContent.contains(food)
        return result
    }
    
    func send(job:Int, toPrinter printerName:String) throws -> String {
        var a:String
        a = "111====="
        defer {
            a = "111"
        }
        a = "222====="
        defer {
            print("aaa=====")
            a = "aaaa"
        }
        if printerName == "Never Has Toner" {
            
            defer {
                print("222")
            }
            print("555=====")
            throw PrinterError.noToner
        }
        
        defer {
            a = "333"
        }
        return a
    }
    
    /*
     // 代码段
     enum PrinterError : Error{
        case outOfPaper
        case noToner
        case onFire
     }
     
     func send(job:Int, toPrinter printerName:String) throws -> String {
        if printerName == "Never Has Toner" {
            throw PrinterError.noToner
        }
        return "Job sent"
     }
     
     1、try捕获异常
     {
        do{
            let printResponse = try send(job: 1, toPrinter: "Never Has Toner")
            print(printResponse)
        }catch PrinterError.noToner {
            print("==-=-=-=-=-")
        }catch {
            print(error)
        }
     }
     
     2、try? 捕获异常
     let printResponse = try? send(job: 1, toPrinter: "Never Has Ton1er")
     print("printResponse:\(printResponse)")
     
     3、try! 捕获一场
     let printResponse = try! send(job: 1, toPrinter: "Never Has Toner")
     print("printResponse:\(printResponse)")
     
     总结：try   try?  try! 三者的异同
     相同点：均可用于捕获异常
     不同点：
        try 需要结合do{}catch{},语句相对于其他两者复杂
        try? 可单独与语句结合，若有异常时，返回nil，否则返回optional value
        try! 若有异常，则程序直接崩溃
     */
    
    
    
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

