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
  func constantsToExport() -> [AnyHashable : Any]! {
    return ["initialCount": 0]
  }

  @objc(editPhoto:name:)
  func editPhoto(name: String) -> String {
    return name
  }
}
