//
//  QuickSortService.swift
//  SwiftSorts
//
//  Created by Michael Green on 10/07/2015.
//  Copyright (c) 2015 Michael Green. All rights reserved.
//

import Foundation

class QuickSortService {
  
  init() {
    
  }
  
  func sort(inout a: [IndexedObject], l: Int, r: Int) {
    let i = partition(&a, l: l, r: r)
    if l < i - 1 {
      sort(&a, l: l, r: i - 1)
    }
    if i < r {
      sort(&a, l: i, r: r)
    }
  }
  
  private func partition(inout a: [IndexedObject], l: Int, r: Int) -> Int {
    var i = l
    var j = r
    let p = a[(i + j) / 2]
    while i <= j {
      while a[i].id < p.id {
        i++
      }
      while j > 0 && a[j].id > p.id {
        j--
      }
      if i <= j {
        if i != j {
          swap(&a[i], &a[j])
        }
        i++
        if j > 0 {
          j--
        }
      }
    }
    return i
  }
}
