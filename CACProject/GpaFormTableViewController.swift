//
//  GpaFormTableViewController.swift
//  CACProject
//
//  Created by Sazci, Sami I. (Student) on 10/28/25.
//

import UIKit

class GpaFormTableViewController: UITableViewController {

    
    var course: Course?
    
    @IBOutlet weak var courseNameTextField: UITextField!
    
    @IBOutlet weak var numCreditsEarnedTextField: UITextField!
    
    @IBOutlet weak var numCreditHoursTextField: UITextField!
    
    @IBOutlet weak var classYearTextField: UITextField!
    
    init?(coder: NSCoder, course: Course?) {
        self.course = course
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.course = nil
        super.init(coder: coder)
    }
    func updateView(){
        guard let course = course else {return}
        
        courseNameTextField.text = course.courseName
        numCreditsEarnedTextField.text = "\(course.numCredits)"
        numCreditHoursTextField.text = "\(course.numCreditHours)"
        classYearTextField.text = "\(course.classYear)"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()

    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard
            let courseName = courseNameTextField.text, !courseName.isEmpty,
            let creditsEarnedText = numCreditsEarnedTextField.text,
            let creditsEarned = Int(creditsEarnedText),
            let creditHoursText = numCreditHoursTextField.text,
            let creditHours = Double(creditHoursText),
            let courseYearText = classYearTextField.text,
            let courseYear = Int(courseYearText)
        else {
            print("Invalid input")
            return
        }

        course = Course(courseName: courseName,
                            numCredits: creditsEarned,
                        numCreditHours: creditHours, classYear: courseYear)
        performSegue(withIdentifier: "UnwindToGpaTable", sender: self)
    }

}
