//
//  RNReactNativeMantis.swift
//  RNReactNativeMantis
//
//  Created by Patryk Szczyglo on 10/10/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
import Mantis

@objc(RNReactNativeMantis)
class RNReactNativeMantis: NSObject {
  @objc
  func constantsToExport() -> [AnyHashable : Any]! {
    return ["initialCount": 0]
  }

  @objc func editPhoto(_ name: String) -> String {
    return name
  }
}
