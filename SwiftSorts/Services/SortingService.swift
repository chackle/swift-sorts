//
//  SortingService.swift
//  SwiftSorts
//
//  Created by Michael Green on 10/07/2015.
//  Copyright (c) 2015 Michael Green. All rights reserved.
//

import Foundation

class SortingService {
  
  let insertionSortService: InsertionSortService
  let selectionSortService: SelectionSortService
  
  init() {
    self.insertionSortService = InsertionSortService()
    self.selectionSortService = SelectionSortService()
  }
  
  func insertionSort(var array: [IndexedObject]) -> BenchmarkObject {
    let start = NSDate()
    insertionSortService.sort(&array)
    let end = NSDate()
    return BenchmarkObject(array: array, testStart: start, testEnd: end)
  }
  
  func selectionSort(var array: [IndexedObject]) -> BenchmarkObject {
    let start = NSDate()
    selectionSortService.sort(&array)
    let end = NSDate()
    return BenchmarkObject(array: array, testStart: start, testEnd: end)
  }
}
