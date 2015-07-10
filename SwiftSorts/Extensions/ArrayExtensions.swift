//
//  ArrayExtensions.swift
//  SwiftSorts
//
//  Created by Michael Green on 10/07/2015.
//  Copyright (c) 2015 Michael Green. All rights reserved.
//

import Foundation

extension Array {
  mutating func shuffle() -> Array {
    if count > 0 {
      for i in 0..<(count - 1) {
        let j = Int(arc4random_uniform(UInt32(count - i))) + i
        swap(&self[i], &self[j])
      }
    }
    return self
  }
}
