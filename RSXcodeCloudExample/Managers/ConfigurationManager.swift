//
//  ConfigurationManager.swift
//  RSXcodeCloudExample
//
//  Created by Camila Moscatelli on 6/2/17.
//  Copyright © 2017 Rootstrap Inc. All rights reserved.
//

import Foundation

class ConfigurationManager: NSObject {

  class func getValue(
    for key: String
  ) -> String? {
    return ProcessInfo.processInfo.environment[key]
  }
}
