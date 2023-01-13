//
//  UserDataManager.swift
//  RSXcodeCloudExample
//
//  Created by Rootstrap on 15/2/16.
//  Copyright © 2016 Rootstrap Inc. All rights reserved.
//

import UIKit

class UserDataManager: NSObject {
  
  static var currentUser: User? {
    get {
      let defaults = UserDefaults.standard
      if
        let data = defaults.data(forKey: "RSXcodeCloudExample-user"),
        let user = try? JSONDecoder().decode(User.self, from: data)
      {
        return user
      }
      return nil
    }
    
    set {
      let user = try? JSONEncoder().encode(newValue)
      UserDefaults.standard.set(user, forKey: "RSXcodeCloudExample-user")
    }
  }
  
  class func deleteUser() {
    UserDefaults.standard.removeObject(forKey: "RSXcodeCloudExample-user")
  }
  
  static var isUserLogged: Bool {
    currentUser != nil
  }
}
