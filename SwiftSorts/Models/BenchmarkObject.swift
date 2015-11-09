//
//  BenchmarkObject.swift
//  SwiftSorts
//
//  Created by Michael Green on 10/07/2015.
//  Copyright (c) 2015 Michael Green. All rights reserved.
//

import Foundation

class BenchmarkObject: CustomDebugStringConvertible {
  
  let array: [IndexedObject]
  private let testStart: NSDate
  private let testEnd: NSDate
  
  init(array: [IndexedObject], testStart: NSDate, testEnd: NSDate) {
    self.array = array
    self.testStart = testStart
    self.testEnd = testEnd
  }
  
  private func timeTaken() -> Double {
    return testEnd.timeIntervalSinceDate(testStart)
  }
  
  var description: String {
    return "(\(timeTaken()) seconds) \n\(array)"
  }
  
  var debugDescription: String {
    return description
  }
}

