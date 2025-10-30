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
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        viewResult.isHidden = true
        if shouldShowResult {
                    viewResult.isHidden = false
            }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC2 = storyboard!.instantiateViewController(withIdentifier: "Result") as! ResultTableViewController
        destinationVC2.courses = accessClass
        self.present(destinationVC2, animated: true, completion: nil)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation

    

}

