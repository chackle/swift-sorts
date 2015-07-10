//
//  SortingService.swift
//  SwiftSorts
//
//  Created by Michael Green on 10/07/2015.
//  Copyright (c) 2015 Michael Green. All rights reserved.
//

import Foundation

class SortingService {
  
  private let insertionSortService: InsertionSortService
  private let selectionSortService: SelectionSortService
  private let heapSortService: HeapSortService
  
  init() {
    self.insertionSortService = InsertionSortService()
    self.selectionSortService = SelectionSortService()
    self.heapSortService = HeapSortService()
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
  
  func heapSort(var array: [IndexedObject]) -> BenchmarkObject {
    let start = NSDate()
    heapSortService.sort(&array)
    let end = NSDate()
    return BenchmarkObject(array: array, testStart: start, testEnd: end)
  }
}
