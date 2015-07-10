//
//  MergeSortService.swift
//  SwiftSorts
//
//  Created by Michael Green on 10/07/2015.
//  Copyright (c) 2015 Michael Green. All rights reserved.
//

import Foundation

class MergeSortService {
  
  init() {
    
  }
  
  func sort(inout a: [IndexedObject]) -> [IndexedObject] {
    if a.count > 1 {
      let q = a.count / 2
      var l = Array(a[0..<q])
      var r = Array(a[q..<a.count])
      sort(&l)
      sort(&r)
      merge(&a, l: l, r: r)
    }
    return a
  }
  
  func merge(inout a: [IndexedObject], l: [IndexedObject], r: [IndexedObject]) {
    var li = l.count - 1
    var ri = r.count - 1
    var c = a.count
    while c > 0 {
      a[--c] = (ri < 0 || (li >= 0 && l[li].id >= r[ri].id)) ? l[li--] : r[ri--]
    }
  }
}
