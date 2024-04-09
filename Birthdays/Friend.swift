//
//  Friend.swift
//  ChatPrototype
//
//  Created by Tim Mitra on 2024-04-09.
//

import Foundation
import SwiftData

@Model
class Friend {
  let name: String
  let birthday: Date
  
  init(name: String, birthday: Date) {
    self.name = name
    self.birthday = birthday
  }
}
