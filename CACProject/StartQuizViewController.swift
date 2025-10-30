//
//  StartQuizViewController.swift
//  CACProject
//
//  Created by Siddiqui, Muhammad Sohaib (Student) on 10/29/25.
//

import UIKit

class StartQuizViewController: UIViewController {

    
    @IBOutlet var takeQuizLabel: UILabel!
    @IBOutlet var takeQuizButton: UIButton!
    @IBOutlet var viewResult: UIButton!
    var shouldShowResult = false
    var accessClass : [Class] = []
    override func viewDidLoad() {
        print("Recieve \(accessClass.count) courses")
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        viewResult.isHidden = true
        if shouldShowResult {
                    viewResult.isHidden = false
            }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Result"{
            if let destinationVC = segue.destination as? ResultTableViewController {
                destinationVC.courses = accessClass
            }
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation

    

}

