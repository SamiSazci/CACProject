//
//  class.swift
//  CACProject
//
//  Created by Siddiqui, Muhammad Sohaib (Student) on 10/24/25.
//

import Foundation

struct Class {
    var courseName : String
    var courseType : String
    var weighted : Bool
    var difficulty : Int
    var gradeLevel : String
    var description : String
    var points : Int 
    var info : String {
        var weight = "an unweighted"
        if weighted == true{
            weight = "a weighted"
        }
        return "\(courseName) is \(weight),\(courseType) class" + "; \(description)"
        
    }

    
}
