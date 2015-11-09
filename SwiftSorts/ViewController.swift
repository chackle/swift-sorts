//
//  ViewController.swift
//  SwiftSorts
//
//  Created by Michael Green on 10/07/2015.
//  Copyright (c) 2015 Michael Green. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    testSorting()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  private func testSorting() {
    let array = generateArrayWithCount(1000)
    array.shuffle()
    let sortingService = SortingService()
    /*
     * Insertion Sort
     *
     * Best: n - Good
     * Average: n^2 - Bad
     * Worst: n^2 - Bad
     *
     */
    let insertion = sortingService.insertionSort(array)
    
    /*
     * Selection Sort
     *
     * Best: n^2 - Bad
     * Average: n^2 - Bad
     * Worst: n^2 - Bad
     *
     */
    let selection = sortingService.selectionSort(array)
    
    /*
     * Heap Sort
     *
     * Best: nlog(n) - Good
     * Average: nlog(n) - Good
     * Worst: nlog(n) - Good
     *
     */
    let heap = sortingService.heapSort(array)
    
    /*
     * Merge Sort
     *
     * Best: nlog(n) - Good
     * Average: nlog(n) - Good
     * Worst: nlog(n) - Good
     *
     */
    let merge = sortingService.mergeSort(array)
    
    /*
     * Quick Sort
     *
     * Best: nlog(n) - Good
     * Average: nlog(n) - Good
     * Worst: n^2 - Bad
     *
     */
    let quick = sortingService.quickSort(array)
    
    print("Insertion Sort: \(insertion.description)\n")
    print("Selection Sort: \(selection.description)\n")
    print("Heap Sort: \(heap.description)\n")
    print("Merge Sort: \(merge.description)\n")
    print("Quick Sort: \(quick.description)\n")
  }
  
  private func generateArrayWithCount(count: Int) -> [IndexedObject] {
    var array = [IndexedObject]()
    for i in 0..<count {
      array.append(IndexedObject(id: i))
    }
    return array
  }
}

