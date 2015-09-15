//
//  UIOperators.swift
//  PrototypeKit
//
//  Created by Alex Zimin on 15/09/15.
//  Copyright © 2015 Alex Zimin. All rights reserved.
//

import UIKit

infix operator <<< { associativity left precedence 50 }

func <<<(left: UIView?, right: PKAction) {
  guard let left = left else {
    return
  }
  
  [left] <<< right
}

func <<<(left: [UIView], var right: PKAction) {
  for view in left {
    right.view = view
    right.action()
  }
}

func <<<(left: PKAction, right: PKAction) -> PKAction {
  return PKGroupOfActions(view: nil, actions: [left, right])
}

func <<<(left: [UIView], var right: PKFind) -> UIView? {
  right.views = left
  return right.find()
}