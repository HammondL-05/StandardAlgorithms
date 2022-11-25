//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Hammond, Leo (NA) on 25/11/2022.
//

import Foundation

class Unknown {
    
    func sumOfFirstAndLast(data: [Int]) -> Int {
        let array = data
        let firstInt = array[0]
        guard array.count > 0 else {
            let sum = firstInt * 2
            return sum
        }
        let finalInt = array[array.count-1]
        let sum = firstInt + finalInt
        return sum
    }
    
    func findMode(data: [Int]) -> Int {
        let array = data
        var mode = 0
        var modeCount = 0
        var nextModeCOunt = 0
        for i in 0..<array.count-1 {
            mode = array[i]
            if mode[i+1] == mode[i] {
                modeCount =+1
            }
        }
    }
}
