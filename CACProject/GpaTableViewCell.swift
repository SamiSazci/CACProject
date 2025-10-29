//
//  GpaTableViewCell.swift
//  CACProject
//
//  Created by Sazci, Sami I. (Student) on 10/28/25.
//

import UIKit

class GpaTableViewCell: UITableViewCell {

    @IBOutlet weak var courseNameLabel: UILabel!
    
    @IBOutlet weak var creditEarnedAndHoursLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with course: Course){
        courseNameLabel.text = course.courseName
        creditEarnedAndHoursLabel.text = "Credits Earned: \(course.numCredits)      Credit Hours: \(course.numCreditHours)"
    }

}
