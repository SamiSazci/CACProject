//
//  Course.swift
//  CACProject
//
//  Created by Sazci, Sami I. (Student) on 10/28/25.
//

import Foundation

struct Course: Comparable, Codable{
    var courseName: String
    var numCredits: Int
    var numCreditHours: Double
    var classYear: Int
    
    static func < (lhs: Course, rhs: Course) -> Bool {
        return lhs.classYear < rhs.classYear
        }
}
