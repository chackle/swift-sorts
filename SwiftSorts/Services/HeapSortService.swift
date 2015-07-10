//
//  HeapSortService.swift
//  SwiftSorts
//
//  Created by Michael Green on 10/07/2015.
//  Copyright (c) 2015 Michael Green. All rights reserved.
//

import Foundation

class HeapSortService {
  
  init() {
    
  }
  
  func sort(inout a: [IndexedObject]) -> [IndexedObject] {
    heapify(&a)
    var e = a.count - 1
    while e > 0 {
      swap(&a[e], &a[0])
      siftDown(&a, s: 0, e: e - 1)
      e--
    }
    return a
  }
  
  private func heapify(inout a: [IndexedObject]) {
    var s = (a.count - 2) / 2
    while s >= 0 {
      siftDown(&a, s: s, e: a.count - 1)
      s--
    }
  }
  
  private func siftDown(inout a: [IndexedObject], s: Int, e: Int) {
    var r = s
    while r * 2 + 1 <= e {
      var c = r * 2 + 1
      if c + 1 <= e && a[c].id < a[c + 1].id {
        c++
      }
      if a[r].id < a[c].id {
        swap(&a[r], &a[c])
        r = c
      }
      else {
        return
      }
    }
  }
}
