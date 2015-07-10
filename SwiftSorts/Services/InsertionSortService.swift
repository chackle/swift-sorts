//
//  InsertionSortService.swift
//  SwiftSorts
//
//  Created by Michael Green on 10/07/2015.
//  Copyright (c) 2015 Michael Green. All rights reserved.
//

import Foundation

class InsertionSortService {
  
  init() {
    
  }
  
  func sort(inout a: [IndexedObject]) -> [IndexedObject] {
    for var i = 1; i < a.count; i++ {
      var o = a[i]
      var j = i - 1
      while j >= 0 && o.id < a[j].id {
        swap(&a[j], &a[j + 1])
        j--
      }
      a[j + 1] = o
    }
    return a
  }
}