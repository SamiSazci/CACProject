//
//  GpaTableViewController.swift
//  CACProject
//
//  Created by Sazci, Sami I. (Student) on 10/28/25.
//

import UIKit

class GpaTableViewController: UITableViewController {

    var courses: [Course] = []
    var totalCreditsEarned: Double = 0
    var totalCreditHours: Double = 0
    
    @IBOutlet weak var gpaNavigationItem: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        courses.sort()
        for currCourse in courses{
            totalCreditsEarned += Double((currCourse.numCredits))*currCourse.numCreditHours
            totalCreditHours += currCourse.numCreditHours
        }
        if(totalCreditHours != 0){
            gpaNavigationItem.title = "GPA: \(Double(totalCreditsEarned)/Double(totalCreditHours))"
        }
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return courses.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CourseCell", for: indexPath) as! GpaTableViewCell

        // Configure the cell...
        let course = courses[indexPath.row]
        cell.update(with: course)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            courses.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
            for currCourse in courses{
                totalCreditsEarned += Double((currCourse.numCredits))*currCourse.numCreditHours
                totalCreditHours += currCourse.numCreditHours
            }
            if(totalCreditHours != 0){
                gpaNavigationItem.title = "GPA: \(Double(totalCreditsEarned)/Double(totalCreditHours))"
            }else{
                gpaNavigationItem.title = "GPA"
            }
            tableView.reloadData()
            
        }
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        guard let source = segue.source as? GpaFormTableViewController,
            let course = source.course else {return}
        
        if let indexPath = tableView.indexPathForSelectedRow {
            courses.remove(at: indexPath.row)
            courses.insert(course, at: indexPath.row)
            tableView.deselectRow(at: indexPath, animated: true)
        } else {
            courses.append(course)
        }
    }
    
    @IBSegueAction func editCourse(_ coder: NSCoder, sender: Any?) -> GpaFormTableViewController? {
        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else {
            return nil
        }
        
        let course = courses[indexPath.row]
        
        return GpaFormTableViewController(coder: coder, course: course)
    }
    

    
}
