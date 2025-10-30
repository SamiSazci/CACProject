//
//  ViewController.swift
//  CACProject
//
//  Created by Sasikumar, Kanishk (Student) on 10/20/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        readFile()
        categorize()
        courses[0].points += 1
        print(courses[0].points)
        let gradientLayer = CAGradientLayer()
            gradientLayer.frame = view.bounds
            gradientLayer.colors = [
                UIColor(red: 0.95, green: 0.97, blue: 1.0, alpha: 1.0).cgColor,
                UIColor.white.cgColor
            ]
            view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    var courses : [Class] = []
    
    var mathCourse : [Class] = []
    var englishCourse : [Class] = []
    var scienceCourse : [Class] = []
    var socialCourse : [Class] = []
    var worldLanguage : [Class] = []
    var artCourse : [Class] = []
    var performanceCourse : [Class] = []
    var careerCourse : [Class] = []
    var athleticsCourse : [Class] = []
    
    
    func readFile(){
        let fileUrl = Bundle.main.path(forResource: "Class", ofType: ".txt")
        
        
        var readString = ""
        do{
            readString = try String(contentsOfFile: fileUrl!,encoding: String.Encoding.utf8)
        } catch let error as NSError{
            print("failed to read")
            print(error)
        }
        let lines = readString.split(whereSeparator: \.isNewline)
        for line in lines {
            let discSep = line.split(separator: ";")
            let compentent = discSep[0]
            let description = discSep[1]
            let compentents = compentent.split(separator: ",")
            let name = compentents[0]
            let subject = compentents[1]
            var weighted = false
            if compentents[2] == "Yes"{
                weighted = true
            }
            let rigor = compentents[3]
            let gradeLevel = compentents[4]
            let points = 0
            
            courses.append(Class(courseName: String(name), courseType: String(subject), weighted: weighted, difficulty: Int(rigor)!,gradeLevel: String(gradeLevel), description: String(description), points: points))
        }
        }
    
    func categorize(){
        for course in courses {
            switch course.courseType {
            case "English":
                englishCourse.append(course)
            case "Mathematics":
                mathCourse.append(course)
            case "Science" :
                scienceCourse.append(course)
            case "Social Studies":
                socialCourse.append(course)
            case "World Language":
                worldLanguage.append(course)
            case "Visual Arts":
                artCourse.append(course)
            case "Performing Arts":
                performanceCourse.append(course)
            case "Career Studies":
                careerCourse.append(course)
            case "Ignite Professional Studies":
                careerCourse.append(course)
            case "Physical Education":
                athleticsCourse.append(course)
            default:
                print(course)
                
            }
        }
    }
    }

