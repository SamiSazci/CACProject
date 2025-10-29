//
//  Question.swift
//  CACProject
//
//  Created by Siddiqui, Muhammad Sohaib (Student) on 10/24/25.
//

import UIKit

class Question: UIViewController {

    struct Question {
        var text : String
        var type : ResponseType
        var answers : [Answer]
    }
    enum ResponseType {
        case single , multiple, ranged
    }

    struct Answer {
        
    }


}
