//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Hammond, Leo (NA) on 25/11/2022.
//

import Foundation

class Searching {
    
    func linearSearch(_ dataToSearch: [Int], _ termToFind: Int) -> Bool {
        var found = Bool()
        var count = 0
        while !found && count != dataToSearch.count-1 {
            if termToFind == dataToSearch[count] {
                found = true
            } else {
                found = false
            }
            count += 1
        }
        return found
    }
    
    func binarySearch(_ data: [Int], _ term: Int) -> Bool {
        
        var array = data
        var found = false
        var count = 1
        var midpoint = array.count/2
        
        while !found && midpoint > 0 {

            if array[midpoint] < term {
                array = Array(array[midpoint..<array.count])
                found = false
                
            } else if array[midpoint] > term {
                array = Array(array[0..<midpoint])
                found = false
                
            } else {
                found = true
            }
            
            midpoint = array.count/2
            count += 1
        }
        return found
    }
    
}

