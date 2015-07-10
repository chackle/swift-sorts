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
    let benchmark = sortingService.insertionSort(array)
    println(benchmark.description)
  }
  
  private func generateArrayWithCount(count: Int) -> [IndexedObject] {
    var array = [IndexedObject]()
    for i in 0..<count {
      array.append(IndexedObject(id: i))
    }
    return array
  }
}

