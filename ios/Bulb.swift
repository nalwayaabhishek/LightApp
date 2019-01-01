//
//  Bulb.swift
//  LightApp
//
//  Created by Abhishek Nalwaya on 31/12/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation

@objc(Bulb)
class Bulb: NSObject {
  @objc
  static var isOn = false
  
  @objc
  func turnOn() {
    Bulb.isOn = true
    print("Bulb is now ON")
  }
  
  @objc
  func turnOff() {
    Bulb.isOn = false
    print("Bulb is now OFF")
  }
  
  @objc
  func getStatus(_ callback: RCTResponseSenderBlock) {
    callback([NSNull(), Bulb.isOn])
  }
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
}
