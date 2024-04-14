//
//  ViewController.swift
//  dynamicDispatch
//
//  Created by Sachin Daingade on 14/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
final class staticDispatch {
    var num = 1
    func increase() {
        num = num + 1
    }
}

class parent {
    func increase() {
        
    }
}

class child: parent {
    var num = 1
    override func increase() {
        num = num + 1
    }
}


//MARK: ----------  table Dispatch

class TableDispatch {
    
    func testStaticDispatch(_ values: staticDispatch) {
        for _ in 1...10 {
            values.increase()
        }
    }
    
    func testDynamicDisptch(_ ref: child) {
        for _ in 1...10 {
            ref.increase()
        }
    }
}



