//
//  ViewController.swift
//  NSObject-Meta
//
//  Created by nzstudio1 on 08/12/2020.
//  Copyright (c) 2020 nzstudio1. All rights reserved.
//

import UIKit
import NSObject_Meta

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.meta = "I am a strong meta!"
        
        self.view.setMeta("I am a strong meta for key: `test`", forKey: "test")
        
        self.view.weakMeta = "I am a weak meta!"
        
        self.view.setWeakMeta("I am a weak meta for key: `test`", forKey: "test")
        
        print(self.view.meta as! String)
        print(self.view.meta(forKey: "test") as! String)
        
        let _ = self.view.weakMeta // returns nil because the weak object is released immediately after assignment
        let _ = self.view.weakMeta(forKey: "test") // returns nil because the weak object is released immediately after assignment
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

