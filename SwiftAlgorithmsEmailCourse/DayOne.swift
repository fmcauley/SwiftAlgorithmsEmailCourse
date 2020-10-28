//
//  DayOne.swift
//  SwiftAlgorithmsEmailCourse
//
//  Created by Frank McAuley on 10/28/20.
//

import Foundation
class DayOne {
    func linearSearch(_ input: [Int], _ value: Int) -> Bool {
        
        for x in input {
            if x == value {
                return true
            }
        }
        return false
    }
    
    func binarySearch(_ input: [Int], _ value: Int) -> Bool {
        var end = input.endIndex - 1
        var start = input.startIndex
        
        for x in input {
            let midPoint = (start + end) / 2
            if x == value {
                return true
            }
            
            if x > value {
                end = midPoint - 1
            }
            
            if x < value {
                start = midPoint + 1
            }
        }
        
        return false
    }
}
