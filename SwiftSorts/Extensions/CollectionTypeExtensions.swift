//
//  CollectionTypeExtensions.swift
//  SwiftSorts
//
//  Created by Michael Green on 09/11/2015.
//  Copyright © 2015 Michael Green. All rights reserved.
//

import Foundation

extension CollectionType {
  func shuffle() -> [Generator.Element] {
    var list = Array(self)
    list.shuffleInPlace()
    return list
  }
}

extension MutableCollectionType where Index == Int {
  mutating func shuffleInPlace() {
    if count < 2 {
      return
    }
    for var i = 0; i < count - 1; i++ {
      let j = Int(arc4random_uniform(UInt32(count - i))) + i
      guard i != j else { continue }
      swap(&self[i], &self[j])
    }
  }
}
