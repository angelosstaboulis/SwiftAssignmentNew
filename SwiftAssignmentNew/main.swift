//
//  main.swift
//  SwiftAssignmentNew
//
//  Created by Angelos Staboulis on 14/7/23.
//

import Foundation

let arraySet = [91,92,93,94,95,96,7,8,9,10]
let numberSet = 7
func assignment(array:[Int],number:Int)->Bool{
    var leftArraySum = 0
    var rightArraySum = 0
    var getIndex = 0
    for item in 0..<arraySet.count {
        if (arraySet[item] == number) {
            getIndex = item+1
            break
        }else{
            leftArraySum = leftArraySum + arraySet[item]
        }
    }
    for item in getIndex..<arraySet.count {
        rightArraySum = rightArraySum + arraySet[item]
    }
    if leftArraySum > rightArraySum {
        return true
    }else{
        return false
    }
}

debugPrint(assignment(array: arraySet, number: 7))
