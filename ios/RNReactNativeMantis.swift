//
//  RNReactNativeMantis.swift
//  RNReactNativeMantis
//
//  Created by Patryk Szczyglo on 10/10/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

@objc(RNReactNativeMantis)
class RNReactNativeMantis: NSObject {
  @objc
  func editPhoto(_ name: NSString) -> [AnyHashable : Any]! {
    return ["fileName": name]
  }
}
