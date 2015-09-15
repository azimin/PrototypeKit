//
//  UIElementsHelper.swift
//  PrototypeKit
//
//  Created by Alex Zimin on 13/09/15.
//  Copyright © 2015 Alex Zimin. All rights reserved.
//

import UIKit


struct UIElement {
  weak var view: UIView?
  init(view: UIView) {
    self.view = view
  }
  
  // MARK: - Views
  
  var activityIndicatorView: UIActivityIndicatorView? {
    return view as? UIActivityIndicatorView
  }
  
  var collectionView: UICollectionView? {
    return view as? UICollectionView
  }
  
  var imageView: UIImageView? {
    return view as? UIImageView
  }
  
  var label: UILabel? {
    return view as? UILabel
  }
  
  var navigationBar: UINavigationBar? {
    return view as? UINavigationBar
  }
  
  var pickerView: UIPickerView? {
    return view as? UIPickerView
  }
  
  var progressView: UIProgressView? {
    return view as? UIProgressView
  }
  
  var scrollView: UIScrollView? {
    return view as? UIScrollView
  }
  
  var searchBar: UISearchBar? {
    return view as? UISearchBar
  }
  
  var searchBarTextField: UITextField? {
    return (self.searchBar?.valueForKey("searchField") as? UITextField)
  }
  
  var tabBar: UITabBar? {
    return view as? UITabBar
  }
  
  var tableView: UITableView? {
    return view as? UITableView
  }
  
  var textView: UITextView? {
    return view as? UITextView
  }
  
  var toolBar: UIToolbar? {
    return view as? UIToolbar
  }
  
  // MARK: - Controls
  
  var button: UIButton? {
    return view as? UIButton
  }
  
  var datePicker: UIDatePicker? {
    return view as? UIDatePicker
  }
  
  var pageControl: UIPageControl? {
    return view as? UIPageControl
  }
  
  var segmentedControl: UISegmentedControl? {
    return view as? UISegmentedControl
  }
  
  var textField: UITextField? {
    return view as? UITextField
  }
  
  var slider: UISlider? {
    return view as? UISlider
  }
  
  var stepper: UIStepper? {
    return view as? UIStepper
  }
  
  var switcher: UISwitch? {
    return view as? UISwitch
  }
}