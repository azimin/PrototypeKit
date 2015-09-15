//
//  Helpers.swift
//  PrototypeKit
//
//  Created by Alex Zimin on 25/08/15.
//  Copyright © 2015 Alex Zimin. All rights reserved.
//

import UIKit

func findViewOfType(type: AnyClass, inView view: UIView) -> UIView? {
  if view.isKindOfClass(type) {
    return view
  }
  
  for subview in view.subviews {
    return findViewOfType(type, inView: subview)
  }
  
  return nil
}

func findViewsOfType(type: AnyClass, inView view: UIView, needToStop: Bool, inout views: [UIView]) {
  if needToStop && views.count > 0 {
    return
  }
  
  if view.isKindOfClass(type) {
    views.append(view)
  }
  
  for subview in view.subviews {
    findViewsOfType(type, inView: subview, needToStop: needToStop, views: &views)
  }
}

// Percent value

postfix operator % { }
postfix func %(value: CGFloat) -> CGFloat {
  return value / 100
}

extension UIColor {
  static func colorWithHexString(hex:String) -> UIColor {
    var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
    
    if (cString.hasPrefix("#")) {
      cString = (cString as NSString).substringFromIndex(1)
    }
    
    if (cString.characters.count != 6) {
      return UIColor.grayColor()
    }
    
    let rString = (cString as NSString).substringToIndex(2)
    let gString = ((cString as NSString).substringFromIndex(2) as NSString).substringToIndex(2)
    let bString = ((cString as NSString).substringFromIndex(4) as NSString).substringToIndex(2)
    
    var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
    NSScanner(string: rString).scanHexInt(&r)
    NSScanner(string: gString).scanHexInt(&g)
    NSScanner(string: bString).scanHexInt(&b)
    
    
    return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
  }
}