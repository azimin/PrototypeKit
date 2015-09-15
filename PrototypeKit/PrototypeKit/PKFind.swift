//
//  PKFind.swift
//  PrototypeKit
//
//  Created by Alex Zimin on 15/09/15.
//  Copyright © 2015 Alex Zimin. All rights reserved.
//

import UIKit

struct Find {
  static let findBottom = PKFindBottom()
}

protocol PKFind {
  var views: [UIView] { get set }
  func find() -> UIView?
}

// MARK: - Postiion

struct PKFindBottom: PKFind {
  var views: [UIView] = []
  
  func find() -> UIView? {
    if views.count == 0 {
      return nil
    }
    
    var minView = views.first as UIView!
    for view in views {
      if view.frame.origin.x > minView.frame.origin.x {
        minView = view
      }
    }
    
    return minView
  }
}