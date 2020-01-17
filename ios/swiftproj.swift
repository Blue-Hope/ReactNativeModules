//
//  swiftproj.swift
//  rnproj
//
//  Created by mac on 2020/01/16.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation
import UIKit

@objc(MyObj)
class MyObj: NSObject {
  
  @objc
  static var name = ""
  
  @objc
  func sendMessage(_ name: String) {
//    let vc = UIViewController()
    MyObj.name = name

//    let alert = UIAlertController(title: "Hello", message: name, preferredStyle: UIAlertController.Style.alert)
//    let defaultAction = UIAlertAction(title: "OK", style: .destructive, handler: nil)
//    alert.addAction(defaultAction)
//    vc.present(alert, animated: true, completion: nil)
////    print(MyObj.name)
  }
  
  @objc
  func rtnMessage(_ callback: RCTResponseSenderBlock){
    callback([NSNull(), "Hello, " + MyObj.name])
  }
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
}
