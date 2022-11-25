//
//  main.swift
//  StandardAlgorithms
//
//  Created by Hammond, Leo (NA) on 25/11/2022.
//

import Foundation

class Sorting {
    
    func bubbleSort(data: [Int]) -> [Int] {
        var list = data
        var swapped = true
        while swapped == true {
            swapped = false
            for i in 0..<list.count-1 {
                if list[i] > list[i+1] {
                    let temp = list[i+1]
                    list[i+1] = list[i]
                    list[i] = temp
                    swapped = true
                }
                    
            }
        }
        return list
    }
    
    func merge(_ leftHalf: [Int], _ rightHalf: [Int]) -> [Int] {
        
        var leftIndex = 0
        var rightIndex = 0

        var sortedArray = [Int]()

        while leftIndex < leftHalf.count && rightIndex < rightHalf.count {
            if leftHalf[leftIndex] < rightHalf[rightIndex] {
                sortedArray.append(leftHalf[leftIndex])
                leftIndex += 1
            } else if leftHalf[leftIndex] > rightHalf[rightIndex] {
                sortedArray.append(rightHalf[rightIndex])
                rightIndex += 1
            } else {
                sortedArray.append(leftHalf[leftIndex])
                leftIndex += 1
                sortedArray.append(rightHalf[rightIndex])
                rightIndex += 1
                
            }
        }
        while leftIndex < leftHalf.count {
            sortedArray.append(leftHalf[leftIndex])
            leftIndex += 1
        }

        while rightIndex < rightHalf.count {
            sortedArray.append(rightHalf[rightIndex])
            rightIndex += 1
        }
        return sortedArray
    }

    func mergeSort(_ data: [Int]) -> [Int] {
        guard data.count > 1 else {
            return data
        }

        let midway = data.count/2

        let firstHalf = mergeSort(Array(data[0..<midway]))
        let secondHalf = mergeSort(Array(data[midway..<data.count]))

        return merge(firstHalf, secondHalf)
    }
    
    func insertionSort(_ data: [Int]) -> [Int] {
        var array = data
        
        for i in 1..<array.count {
            let temp = array[i]
            var j = i-1

            while j >= 0 && array[j] > temp {
                array[j+1] = array[j]
                j = j-1
            }
            
            array[j+1] = temp
        }
        return array
    }
    
}



