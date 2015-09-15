//
//  ViewController.swift
//  PrototypeKit
//
//  Created by Alex Zimin on 25/08/15.
//  Copyright © 2015 Alex Zimin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    buttons <<< Find.findBottom <<< Actions.changeColor(UIColor.blackColor())
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

