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
    var array = generateArrayWithCount(100)
    array.shuffle()
    let sortingService = SortingService()
    let insertion = sortingService.insertionSort(array)
    let selection = sortingService.selectionSort(array)
    let heap = sortingService.heapSort(array)
    let merge = sortingService.mergeSort(array)
    println("Insertion Sort: \(insertion.description)\n")
    println("Selection Sort: \(selection.description)\n")
    println("Heap Sort: \(heap.description)\n")
    println("Merge Sort: \(merge.description)\n")
  }
  
  private func generateArrayWithCount(count: Int) -> [IndexedObject] {
    var array = [IndexedObject]()
    for i in 0..<count {
      array.append(IndexedObject(id: i))
    }
    return array
  }
}

