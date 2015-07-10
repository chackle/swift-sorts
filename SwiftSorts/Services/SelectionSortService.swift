//
//  SelectionSortService.swift
//  SwiftSorts
//
//  Created by Michael Green on 10/07/2015.
//  Copyright (c) 2015 Michael Green. All rights reserved.
//

import Foundation

class SelectionSortService {
  
  init() {
    
  }
  
  func sort(inout a: [IndexedObject]) -> [IndexedObject] {
    var m = 0
    for var i = 0; i < a.count; i++ {
      m = i
      for var j = i + 1; j < a.count; j++ {
        if a[j].id < a[m].id {
          m = j
        }
      }
      if m != i {
        swap(&a[i], &a[m])
      }
    }
    return a
  }
}
