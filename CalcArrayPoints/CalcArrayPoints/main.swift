//
//  main.swift
//  CalcArrayPoints
//
//  Created by Sabrina Niklaus on 4/4/17.
//  Copyright © 2017 Sabrina Niklaus. All rights reserved.
//

import Foundation

// Generic math operation
func mathOperation(left: Int, right: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(left, right)
}

// Basic calculator operations
func add(left: Int, right: Int ) -> Int {
    return left + right
}

func subtract(left: Int, right: Int ) -> Int {
    return left - right
}

func multiply(left: Int, right: Int ) -> Int {
    return left * right
}

func divide(left: Int, right : Int ) -> Int {
    return left / right
}

// Generic math operation with input array
func reduce(array: [Int], operation: ([Int]) -> Int) -> Int {
    return operation(array)
}

// Calculator functions with input array
func add(array: [Int]) -> Int {
    var sum = 0
    for num in array {
        sum += num
    }
    return sum
}

func subtract(array: [Int]) -> Int {
    var diff = 0
    for num in array {
        diff -= num
    }
    return diff
}

func multiply(array: [Int]) -> Int {
    var product = 1
    for num in array {
        product = num * product
    }
    return product 
}

func average(array: [Int]) -> Int {
    var sum = 0
    for num in array {
        sum += num
    }
    return sum / array.count
}

func count(array: [Int]) -> Int {
    return array.count
}

// Points
func add(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    let num1 = p1.0 + p2.0
    let num2 = p1.1 + p2.1
    return (num1, num2)
}

func subtract(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    let num1 = p1.0 - p2.0
    let num2 = p1.1 - p2.1
    return (num1, num2)
}

// Handle non-two-arity
func add(_ points: (Int, Int)...) -> (Int, Int) {
    var num1 = 0
    var num2 = 0
    for point in points {
        num1 += point.0
        num2 += point.1
    }
    return (num1, num2)
}

func subtract(_ points: (Int, Int)...) -> (Int, Int) {
    var num1 = 0
    var num2 = 0
    for point in points {
        num1 -= point.0
        num2 -= point.1
    }
    return (num1, num2)
}

// Dictionary representation 

// Ints
func add(p1: [String : Int]?, p2: [String : Int]?) -> [String : Int]? {
    var sum : [String : Int] = [:]
    if (p1?["x"] != nil && p2?["x"] != nil && p1?["y"] != nil && p2?["y"] != nil) {
        sum["x"] = (p1?["x"])! + (p2?["x"])!
        sum["y"] = (p1?["y"])! + (p2?["y"])!
    }
    return sum
}

func subtract(p1: [String : Int]?, p2: [String : Int]?) -> [String : Int]? {
    var diff : [String : Int] = [:]
    if (p1?["x"] != nil && p2?["x"] != nil && p1?["y"] != nil && p2?["y"] != nil) {
        diff["x"] = (p1?["x"]!)! - (p2?["x"]!)!
        diff["y"] = (p1?["y"]!)! - (p2?["y"]!)!
    }
    return diff
}

// Doubles
func add(p1: [String : Double]?, p2: [String : Double]?) -> [String : Double]? {
    var sum : [String : Double] = [:]
    if (p1?["x"] != nil && p2?["x"] != nil && p1?["y"] != nil && p2?["y"] != nil) {
        sum["x"] = (p1?["x"]!)! + (p2?["x"]!)!
        sum["y"] = (p1?["y"]!)! + (p2?["y"]!)!
    }
    return sum
}

func subtract(p1: [String : Double]?, p2: [String : Double]?) -> [String : Double]? {
    var diff : [String : Double] = [:]
    if (p1?["x"] != nil && p2?["x"] != nil && p1?["y"] != nil && p2?["y"] != nil) {
        diff["x"] = (p1?["x"]!)! - (p2?["x"]!)!
        diff["y"] = (p1?["y"]!)! - (p2?["y"]!)!
    }
    return diff
}

