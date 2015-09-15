//
//  UIElements.swift
//  PrototypeKit
//
//  Created by Alex Zimin on 25/08/15.
//  Copyright © 2015 Alex Zimin. All rights reserved.
//

import UIKit

// MARK: - Table View

extension UIViewController {
  var table: UITableView? {
    if let tableViewController = self as? UITableViewController {
      return tableViewController.tableView
    }
    
    return findViewOfType(UITableView().classForCoder, inView: self.view) as? UITableView
  }
  
  var buttons: [UIButton] {
    var buttons: [UIView] = []
    findViewsOfType(UIButton().classForCoder, inView: self.view, needToStop: false, views: &buttons)
    return (buttons as? [UIButton]) ?? []
  }
  
  var button: UIButton? {
    return buttons.first
  }
}