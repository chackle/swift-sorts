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
  private let mergeSortService: MergeSortService
  private let quickSortService: QuickSortService
  
  init() {
    self.insertionSortService = InsertionSortService()
    self.selectionSortService = SelectionSortService()
    self.heapSortService = HeapSortService()
    self.mergeSortService = MergeSortService()
    self.quickSortService = QuickSortService()
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
  
  func mergeSort(var array: [IndexedObject]) -> BenchmarkObject {
    let start = NSDate()
    mergeSortService.sort(&array)
    let end = NSDate()
    return BenchmarkObject(array: array, testStart: start, testEnd: end)
  }
  
  func quickSort(var array: [IndexedObject]) -> BenchmarkObject {
    let start = NSDate()
    quickSortService.sort(&array, l: 0, r: array.count - 1)
    let end = NSDate()
    return BenchmarkObject(array: array, testStart: start, testEnd: end)
  }
}
