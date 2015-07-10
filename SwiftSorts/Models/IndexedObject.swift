//
//  IndexedObject.swift
//  SwiftSorts
//
//  Created by Michael Green on 10/07/2015.
//  Copyright (c) 2015 Michael Green. All rights reserved.
//

import Foundation

class IndexedObject: DebugPrintable {
  
  let id: Int
  
  init(id: Int) {
    self.id = id
  }
  
  var description: String {
    return "\(self.id)"
  }
  
  var debugDescription: String {
    return description
  }
}