//
//  courseViewController.swift
//  CACProject
//
//  Created by Siddiqui, Muhammad Sohaib (Student) on 10/23/25.
//

import UIKit

class courseViewController: UIViewController {
    
    
//    @IBOutlet var commandLabel: UILabel!
//    @IBOutlet var takeQuizButton: UIButton!
    @IBOutlet var gradeInstructLabel: UILabel!
    @IBOutlet var gradePopUp: UIButton!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var weightPopUp: UIButton!
    @IBOutlet var saveButtonOutlet: UIButton!
    @IBOutlet var mathSwitch: UISwitch!
    @IBOutlet var englishSwitch: UISwitch!
    @IBOutlet var scienceSwitch: UISwitch!
    @IBOutlet var socialSwitch: UISwitch!
    @IBOutlet var wlSwitch: UISwitch!
    @IBOutlet var visualSwitch: UISwitch!
    @IBOutlet var performanceSwitch: UISwitch!
    @IBOutlet var athleticsSwitch: UISwitch!
    @IBOutlet var careerSwitch: UISwitch!
    @IBOutlet var majorLabel: UILabel!
    @IBOutlet var majorPopUp: UIButton!
    @IBOutlet var submitButtonOutlet: UIButton!
    var selectedGrade : String = ""
    var selectedWeight : String = ""
    var viewController : ViewController =  ViewController()
    var accessClass : [Class] = []
    
    @IBOutlet var whatLabel: UILabel!
    @IBOutlet var collection: UIStackView!
    @IBOutlet var nextGreeenButton: UIButton!
    
    @IBOutlet var problemSwitch: UISwitch!
    @IBOutlet var comSwitch: UISwitch!
    @IBOutlet var quantitativeSwitch: UISwitch!
    @IBOutlet var creativeSwitch: UISwitch!
    @IBOutlet var appliedSwitch: UISwitch!
    @IBOutlet var designSwitch: UISwitch!
    @IBOutlet var culturalSwitch: UISwitch!
    @IBOutlet var skillCollection: UIStackView!
    @IBOutlet var problemSwitch2: UISwitch!
    @IBOutlet var commSwitch2: UISwitch!
    @IBOutlet var quantitativeSwitch2: UISwitch!
    @IBOutlet var creativeSwitch2: UISwitch!
    @IBOutlet var appliedSwitch2: UISwitch!
    @IBOutlet var designSwitch2: UISwitch!
    @IBOutlet var cultureSwitch2: UISwitch!
    @IBOutlet var nonSkillCollection: UIStackView!
    func setUp(){
        gradeInstructLabel.isHidden = false
        majorLabel.isHidden = true
        majorPopUp.isHidden = true
        submitButtonOutlet.isHidden = true
        whatLabel.isHidden = true
        collection.isHidden = true
        nextGreeenButton.isHidden = true
        skillCollection.isHidden = true
        nonSkillCollection.isHidden = true
    }
    @IBAction func saveButtonAction(_ sender: Any) {
        gradeInstructLabel.isHidden = true
        gradePopUp.isHidden = true
        weightLabel.isHidden = true
        weightPopUp.isHidden = true
        saveButtonOutlet.isHidden = true
        
        selectedGrade = gradePopUp.title(for: .normal)!
        selectedWeight = weightPopUp.title(for: .normal)!
        
        _ = Int(selectedGrade.replacingOccurrences(of: "th", with: "")) ?? 0
        
        for course in accessClass {
            switch selectedWeight {
                case "prefer weighted":
                    if course.weighted {
                        if let index = accessClass.firstIndex(where: {$0.courseName == course.courseName}){
                            accessClass[index].points += 2
                        }
                    }
                case "only weighted":
                    if !course.weighted{
                        if let index = accessClass.firstIndex(where: {$0.courseName == course.courseName}){
                            accessClass.remove(at: index)
                        }
                    }
                case "only unweighted":
                    if course.weighted {
                        if let index = accessClass.firstIndex(where: {$0.courseName == course.courseName}){
                            accessClass.remove(at: index)
                        }
                    }
                default:
                    continue
                
            }
        }
        gradeInstructLabel.isHidden = true
        gradePopUp.isHidden = true
        weightLabel.isHidden = true
        weightPopUp.isHidden = true
        saveButtonOutlet.isHidden = true
        whatLabel.isHidden = false
        collection.isHidden = false
        nextGreeenButton.isHidden = false
        
    }
    @IBAction func nextAction(_ sender: Any) {
        if mathSwitch.isOn {
            for course in accessClass {
                    if "Mathematics" == course.courseType{
                        if let index = accessClass.firstIndex(where: {$0.courseName == course.courseName}){
                            accessClass.remove(at: index)
                        }
                    }
                
            }
        }
        if englishSwitch.isOn {
            for course in accessClass {
                if "English" == course.courseType{
                    if let index = accessClass.firstIndex(where: {$0.courseName == course.courseName}){
                        accessClass.remove(at: index)
                    }
                }
            }
        }
        if scienceSwitch.isOn {
            for course in accessClass {
                if "Science" == course.courseType{
                    if let index = accessClass.firstIndex(where: {$0.courseName == course.courseName}){
                        accessClass.remove(at: index)
                    }
                }
            }
        }
        if socialSwitch.isOn {
            for course in accessClass {
                if "Social Studies" == course.courseType{
                    if let index = accessClass.firstIndex(where: {$0.courseName == course.courseName}){
                        accessClass.remove(at: index)
                    }
                }
            }
        }
        if wlSwitch.isOn {
            for course in accessClass {
                if "World Language" == course.courseType{
                    if let index = accessClass.firstIndex(where: {$0.courseName == course.courseName}){
                        accessClass.remove(at: index)
                    }
                }
            }
        }
        if visualSwitch.isOn {
            for course in accessClass {
                if "Visual Arts" == course.courseType{
                    if let index = accessClass.firstIndex(where: {$0.courseName == course.courseName}){
                        accessClass.remove(at: index)
                    }
                }
            }
        }
        if performanceSwitch.isOn {
            for course in accessClass {
                if "Performing Arts" == course.courseType{
                    if let index = accessClass.firstIndex(where: {$0.courseName == course.courseName}){
                        accessClass.remove(at: index)
                    }
                }
            }
        }
        if athleticsSwitch.isOn {
            for course in accessClass {
                if "Physical Education" == course.courseType{
                    if let index = accessClass.firstIndex(where: {$0.courseName == course.courseName}){
                        accessClass.remove(at: index)
                    }
                }
            }
        }
        if careerSwitch.isOn {
            for course in accessClass {
                if "Career Studies" == course.courseType || "Ignite Professional Studies" == course.courseType{
                    if let index = accessClass.firstIndex(where: {$0.courseName == course.courseName}){
                        accessClass.remove(at: index)
                    }
                }
            }
        }
        whatLabel.isHidden = true
        collection.isHidden = true
        nextGreeenButton.isHidden = true
        majorLabel.isHidden = false
        majorPopUp.isHidden = false
        submitButtonOutlet.isHidden = false
    }
    @IBAction func submitAction(_ sender: Any) {
        let selectedMajor = majorPopUp.title(for: .normal)!
        for (index, course) in accessClass.enumerated() {
                let courseName = course.courseName.lowercased()
                let description = course.description.lowercased()
                var shouldIncrement = false
                
            switch selectedMajor {
                case "Psychology":
                    shouldIncrement = courseName.contains("psychology") ||
                                    description.contains("human behavior") ||
                                    description.contains("science")
                case "Business/Finance":
                    shouldIncrement = courseName.contains("business") ||
                                    courseName.contains("economics") ||
                                    courseName.contains("finance") ||
                                    description.contains("marketing")
                case "English/Liberal Arts":
                    shouldIncrement = course.courseName.lowercased().contains("english") || course.courseName.lowercased().contains("journalism") || course.courseName.lowercased().contains("reading") || course.description.lowercased().contains("research") || course.description.lowercased().contains("literature") || course.description.lowercased().contains("writing")
                case "Communication":
                    shouldIncrement = course.courseName.lowercased().contains("english") || course.courseName.lowercased().contains("communication") || course.courseName.lowercased().contains("speaking") || course.description.lowercased().contains("literature") || course.description.lowercased().contains("presentation")
                case "Computer Science":
                    shouldIncrement = course.courseName.lowercased().contains("computer") || course.courseName.lowercased().contains("technology") || course.courseName.lowercased().contains("cybersecurity") || course.courseName.lowercased().contains("robotics") || course.description.lowercased().contains("logic") || course.description.lowercased().contains("data")
                case "Engineering":
                    shouldIncrement = course.courseName.lowercased().contains("engineering") || course.courseName.lowercased().contains("robotics") || course.courseName.lowercased().contains("east") || course.description.lowercased().contains("engineering") || course.description.lowercased().contains("CAD")
                case "Pre-med":
                    shouldIncrement = course.courseName.lowercased().contains("biology") || course.courseName.lowercased().contains("medical") || course.courseName.lowercased().contains("health") || course.description.lowercased().contains("medical") || course.description.lowercased().contains("science") || course.description.lowercased().contains("medicine")
                case "Agriculture":
                    shouldIncrement = course.courseName.lowercased().contains("life") || course.courseName.lowercased().contains("nutrition") || course.courseName.lowercased().contains("agriculture") || course.description.lowercased().contains("environment") || course.description.lowercased().contains("agriculture")
                    
                default:
                    continue
            }
                
                if shouldIncrement {
                    print("Incrementing \(course.courseName) from \(accessClass[index].points) to \(accessClass[index].points + 5)")
                    accessClass[index].points = accessClass[index].points + 5
                }
        }
        majorLabel.isHidden = true
        majorPopUp.isHidden = true
        submitButtonOutlet.isHidden = true
        skillCollection.isHidden = false
    }
    
    @IBAction func goodSkillAction(_ sender: Any) {
        if problemSwitch.isOn{
            for (index,course) in accessClass.enumerated() {
                if course.description.lowercased().contains("problem") || course.description.lowercased().contains("reasoning") || course.description.lowercased().contains("analy") || course.description.lowercased().contains("reasearch") || course.description.lowercased().contains("design") || course.description.lowercased().contains("thinking") || course.description.lowercased().contains("logic") || course.description.lowercased().contains("math") || course.description.lowercased().contains("science"){
                    accessClass[index].points += 2
                }
            }
        }
        if comSwitch.isOn {
            for (index,course) in accessClass.enumerated(){
                if course.description.lowercased().contains("communication") || course.description.lowercased().contains("debate") || course.description.lowercased().contains("english") || course.description.lowercased().contains("literature") || course.description.lowercased().contains("research"){
                    accessClass[index].points += 2
                }
            }
        }
        if quantitativeSwitch.isOn {
            for (index,course) in accessClass.enumerated() {
                if course.description.lowercased().contains("math") || course.description.lowercased().contains("logic") || course.description.lowercased().contains("thinking") || course.description.lowercased().contains("research") || course.description.lowercased().contains("engineering") || course.description.lowercased().contains("physics") || course.description.lowercased().contains("computer"){
                    accessClass[index].points += 2
                }
            }
        }
        if creativeSwitch.isOn {
            for (index,course) in accessClass.enumerated() {
                if course.description.lowercased().contains("english") || course.description.lowercased().contains("art") || course.description.lowercased().contains("drawing") || course.description.lowercased().contains("lit") || course.description.lowercased().contains("ceramics") || course.description.lowercased().contains("film"){
                    accessClass[index].points += 2
                }
            }
        }
        if appliedSwitch.isOn {
            for (index,course) in accessClass.enumerated() {
                if course.description.lowercased().contains("ignite") || course.description.lowercased().contains("project") || course.description.lowercased().contains("athletics") || course.description.lowercased().contains("design") || course.description.lowercased().contains("application") || course.description.lowercased().contains("career"){
                    accessClass[index].points += 2
                }
            }
        }
        if designSwitch.isOn {
            for (index,course) in accessClass.enumerated() {
                if course.description.lowercased().contains("design") || course.description.lowercased().contains("art") || course.description.lowercased().contains("creative") || course.description.lowercased().contains("project") || course.description.lowercased().contains("management") || course.description.lowercased().contains("entrepreneurship"){
                    accessClass[index].points += 2
                }
            }
        }
        if culturalSwitch.isOn {
            for (index,course) in accessClass.enumerated() {
                if course.description.lowercased().contains("world") || course.description.lowercased().contains("human") || course.description.lowercased().contains("soci") || course.description.lowercased().contains("history") || course.description.lowercased().contains("politic"){
                    accessClass[index].points += 2
                }
            }
        }
        skillCollection.isHidden = true
        nonSkillCollection.isHidden = false
    }
    @IBAction func nonSkillNext(_ sender: Any) {
        if problemSwitch2.isOn{
            for (index,course) in accessClass.enumerated() {
                if course.description.lowercased().contains("problem") || course.description.lowercased().contains("reasoning") || course.description.lowercased().contains("analy") || course.description.lowercased().contains("reasearch") || course.description.lowercased().contains("design") || course.description.lowercased().contains("thinking") || course.description.lowercased().contains("logic") || course.description.lowercased().contains("math") || course.description.lowercased().contains("science"){
                    accessClass[index].points += 3
                }
            }
        }
        if commSwitch2.isOn {
            for (index,course) in accessClass.enumerated(){
                if course.description.lowercased().contains("communication") || course.description.lowercased().contains("debate") || course.description.lowercased().contains("english") || course.description.lowercased().contains("literature") || course.description.lowercased().contains("research"){
                    accessClass[index].points += 3
                }
            }
        }
        if quantitativeSwitch2.isOn {
            for (index,course) in accessClass.enumerated() {
                if course.description.lowercased().contains("math") || course.description.lowercased().contains("logic") || course.description.lowercased().contains("thinking") || course.description.lowercased().contains("research") || course.description.lowercased().contains("engineering") || course.description.lowercased().contains("physics") || course.description.lowercased().contains("computer"){
                    accessClass[index].points += 3
                }
            }
        }
        if creativeSwitch2.isOn {
            for (index,course) in accessClass.enumerated() {
                if course.description.lowercased().contains("english") || course.description.lowercased().contains("art") || course.description.lowercased().contains("drawing") || course.description.lowercased().contains("lit") || course.description.lowercased().contains("ceramics") || course.description.lowercased().contains("film"){
                    accessClass[index].points += 3
                }
            }
        }
        if appliedSwitch2.isOn {
            for (index,course) in accessClass.enumerated() {
                if course.description.lowercased().contains("ignite") || course.description.lowercased().contains("project") || course.description.lowercased().contains("athletics") || course.description.lowercased().contains("design") || course.description.lowercased().contains("application") || course.description.lowercased().contains("career"){
                    accessClass[index].points += 3
                }
            }
        }
        if designSwitch2.isOn {
            for (index,course) in accessClass.enumerated() {
                if course.description.lowercased().contains("design") || course.description.lowercased().contains("art") || course.description.lowercased().contains("creative") || course.description.lowercased().contains("project") || course.description.lowercased().contains("management") || course.description.lowercased().contains("entrepreneurship"){
                    accessClass[index].points += 3
                }
            }
        }
        if cultureSwitch2.isOn {
            for (index,course) in accessClass.enumerated() {
                if course.description.lowercased().contains("world") || course.description.lowercased().contains("human") || course.description.lowercased().contains("soci") || course.description.lowercased().contains("history") || course.description.lowercased().contains("politic"){
                    accessClass[index].points += 3
                }
            }
        }
        print(accessClass)
        nonSkillCollection.isHidden = true
        let destinationVC = storyboard!.instantiateViewController(withIdentifier: "Course Rec") as! StartQuizViewController
        destinationVC.shouldShowResult = true
        destinationVC.accessClass = accessClass
        self.present(destinationVC, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewController.readFile()
        viewController.categorize()
        accessClass = viewController.courses
        setUp()
        setupPopUp()
    }
    func setupPopUp(){
        let optionClosure = {(action : UIAction) in print(action.title)}
    
        gradePopUp.menu = UIMenu(children: [UIAction(title: "9th", handler: optionClosure),UIAction(title: "10th", handler: optionClosure),UIAction(title: "11th", handler: optionClosure),UIAction(title: "12th", handler: optionClosure)])
        
        gradePopUp.showsMenuAsPrimaryAction = true
        gradePopUp.changesSelectionAsPrimaryAction = true
        
        weightPopUp.menu = UIMenu(children: [UIAction(title: "none", handler: optionClosure),UIAction(title: "prefer weighted", handler: optionClosure),UIAction(title: "only unweighted", handler: optionClosure),UIAction(title: "only weighted", handler: optionClosure)])
    
      
        weightPopUp.showsMenuAsPrimaryAction = true
        weightPopUp.changesSelectionAsPrimaryAction = true
        
        majorPopUp.menu = UIMenu(children:[UIAction(title: "None", handler: optionClosure),UIAction(title: "Business/Finance", handler: optionClosure),UIAction(title: "Psychology", handler: optionClosure),UIAction(title: "Communication", handler: optionClosure),UIAction(title: "English/Liberal Arts", handler: optionClosure),UIAction(title: "Computer Science", handler: optionClosure),UIAction(title: "Engineering", handler: optionClosure),UIAction(title: "Pre-med", handler: optionClosure),UIAction(title: "Agriculture", handler: optionClosure)])
        majorPopUp.showsMenuAsPrimaryAction = true
        majorPopUp.changesSelectionAsPrimaryAction = true
        
        
        }
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }

