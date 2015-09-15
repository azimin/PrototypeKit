//
//  PKActions.swift
//  PrototypeKit
//
//  Created by Alex Zimin on 12/09/15.
//  Copyright © 2015 Alex Zimin. All rights reserved.
//

import UIKit

// Actions

struct Actions {
  static let hide = HideAction()
  static let show = ShowAction()
  
  static func changeOpacity(value: CGFloat) -> ChangeOpacityAction {
    return ChangeOpacityAction(value: value)
  }
  
  static func changeBackgroundColor(value: UIColor) -> ChangeBackgrundColorAction {
    return ChangeBackgrundColorAction(value: value)
  }
  
  static func changeTextColor(value: UIColor) -> ChangeTextColorAction {
    return ChangeTextColorAction(value: value)
  }
  
  static func changeColor(value: UIColor) -> ChangeColorAction {
    return ChangeColorAction(value: value)
  }
}

// Operator

protocol PKAction {
  weak var view: UIView? { get set }
  func action()
}

protocol PKValuedAction: PKAction {
  typealias valueType
  var value: valueType! { get set }
  
  init(value: valueType)
}

// MARK: - Group

struct PKGroupOfActions: PKAction {
  weak var view: UIView?
  var actions: [PKAction] = []
  
  func action() {
    for var action in actions {
      action.view = view
      action.action()
    }
  }
}

// MARK: - Hide, Show, Opacity

struct HideAction: PKAction {
  weak var view: UIView?
  func action() {
    view?.hidden = true
  }
}

struct ShowAction: PKAction {
  weak var view: UIView?
  func action() {
    view?.hidden = false
  }
}

struct ChangeOpacityAction: PKValuedAction {
  weak var view: UIView?
  var value: CGFloat!
  
  init(value: CGFloat) {
    self.value = value
  }
  
  func action() {
    view?.alpha = value
  }
}

// MARK: - Color

struct ChangeBackgrundColorAction: PKValuedAction {
  weak var view: UIView?
  var value: UIColor!
  
  init(value: UIColor) {
    self.value = value
  }
  
  func action() {
    view?.backgroundColor = value
  }
}

struct ChangeTextColorAction: PKValuedAction {
  weak var view: UIView?
  var value: UIColor!
  
  init(value: UIColor) {
    self.value = value
  }
  
  func action() {
    guard let view = view else {
      return
    }
    
    let element = UIElement(view: view)
    
    element.label?.textColor = value
    element.searchBarTextField?.textColor = value
    element.textView?.textColor = value
    element.button?.setTitleColor(value, forState: .Normal)
    element.textField?.textColor = value
  }
}

struct ChangeColorAction: PKValuedAction {
  weak var view: UIView?
  var value: UIColor!
  
  init(value: UIColor) {
    self.value = value
  }
  
  func action() {
    guard let view = view else {
      return
    }
    
    let element = UIElement(view: view)
    
    element.activityIndicatorView?.color = value
    element.imageView?.tintColor = value
    element.navigationBar?.tintColor = value
    element.progressView?.tintColor = value
    
    element.label?.textColor = value
    element.searchBarTextField?.textColor = value
    element.textView?.textColor = value
    element.button?.setTitleColor(value, forState: .Normal)
    element.textField?.textColor = value
  }
}

