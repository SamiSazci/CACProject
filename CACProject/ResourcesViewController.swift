//
//  ResourcesViewController.swift
//  CACProject
//
//  Created by Sasikumar, Kanishk (Student) on 10/29/25.
//

import UIKit

class ResourcesViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var resources: [Resource] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        loadResources()
    }
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
        
        // Register custom cell
        tableView.register(ResourceTableViewCell.self, forCellReuseIdentifier: "ResourceCell")
    }
    
    func loadResources() {
        resources = [
                Resource(
                    title: "AP Daily: Practice Sessions",
                    link: "https://blog.collegeboard.org/free-resources-prepare-ap-exams",
                    overview: "Official video practice sessions for AP exams from the College Board, focusing on both free-response and multiple-choice questions.",
                    isPaid: false
                ),
                Resource(
                    title: "AP Daily Videos",
                    link: "https://blog.collegeboard.org/free-resources-prepare-ap-exams",
                    overview: "Short video lessons taught by experienced AP teachers to review and practice content assessed on the AP exam.",
                    isPaid: false
                ),
                Resource(
                    title: "AP Daily: Live Review Recordings",
                    link: "https://blog.collegeboard.org/free-resources-prepare-ap-exams",
                    overview: "Previous recordings of live review events for all AP courses, meant for flexible exam review.",
                    isPaid: false
                ),
                Resource(
                    title: "AP Classroom Resources",
                    link: "https://blog.collegeboard.org/free-resources-prepare-ap-exams",
                    overview: "Includes personalized feedback, topic questions, and performance reports to track prep and progress for all AP subjects.",
                    isPaid: false
                ),
                Resource(
                    title: "Knowt AP Exam Hub",
                    link: "https://knowt.com/exams/AP",
                    overview: "Huge library of user-contributed AP study guides, flashcards, and review materials for every AP subject.",
                    isPaid: false
                ),
                Resource(
                    title: "Khan Academy AP Prep Courses",
                    link: "https://www.khanacademy.org",
                    overview: "Entirely free, on-demand AP courses with videos, quizzes, and alignment with official AP standards for all major subjects.",
                    isPaid: false
                ),
                Resource(
                    title: "Fiveable AP Prep",
                    link: "https://fiveable.me",
                    overview: "Cheat sheets, study guides, practice problems, and trivia-style questions for many AP subjects. Designed by recent students.",
                    isPaid: false
                ),
                Resource(
                    title: "Bill Barnum YouTube",
                    link: "https://www.youtube.com/channel/UCECwUQMY-gPknLBgTyE4Hzw/videos",
                    overview: "Hundreds of free tutorials, unit walkthroughs, practice problems, and project guidance for AP Computer Science A (APCSA) and AP CSP.",
                    isPaid: false
                ),
                Resource(
                    title: "The Princeton Review AP 5 Tutoring",
                    link: "https://www.princetonreview.com",
                    overview: "One-on-one tutoring with a '5 or money back' guarantee—offers live online sessions, practice questions, and custom plans.",
                    isPaid: true
                ),
                Resource(
                    title: "Acely AI-powered AP Prep",
                    link: "https://acely.com",
                    overview: "Adaptive AP prep platform using AI to offer performance analytics, unlimited questions, and detailed practice tests. (Free trial)",
                    isPaid: true
                ),
                Resource(
                    title: "Albert AP Practice",
                    link: "https://www.albert.io",
                    overview: "Online question bank for all AP subjects, with 40,000+ practice problems, mock exams, and narrative explanations. (Trial available)",
                    isPaid: true
                ),
                Resource(
                    title: "Study.com AP Practice",
                    link: "https://www.study.com",
                    overview: "Video-based AP exam prep including thousands of practice questions, lessons, and self-paced review materials. (Trial available)",
                    isPaid: true
                ),
                Resource(
                    title: "Marco Learning AP Bootcamps",
                    link: "https://marcolearning.com",
                    overview: "Live, intensive online review sessions for AP subjects with session recordings and personalized study plans.",
                    isPaid: true
                ),
                Resource(
                    title: "Heimler's History",
                    link: "https://www.youtube.com/@heimlershistory",
                    overview: "AP History-focused channel with free YouTube videos; paid note guides and review guides for deeper prep.",
                    isPaid: true
                ),
                Resource(
                    title: "UWorld College Prep Questions",
                    link: "https://uworld.com",
                    overview: "Large question bank for AP subjects with detailed explanations and spaced repetition flashcards.",
                    isPaid: true
                ),
                Resource(
                    title: "Varsity Tutors AP Practice Tests",
                    link: "https://www.varsitytutors.com",
                    overview: "Live private tutoring and classes with access to practice tests and adaptive learning tools.",
                    isPaid: true
                ),
                Resource(
                    title: "Kaplan AP Tutoring",
                    link: "https://www.kaptest.com",
                    overview: "Structured live and on-demand AP prep courses; private tutoring options available with full-length practice tests.",
                    isPaid: true
                ),
                Resource(
                    title: "High Tech High Student Projects",
                    link: "https://www.hightechhigh.org/student-work/projects/",
                    overview: "Real student project examples in STEM, history, social justice, and interdisciplinary studies for inspiration and reference.",
                    isPaid: false
                ),
                Resource(
                    title: "PBLWorks Project Resources",
                    link: "https://www.pblworks.org/resources-overview",
                    overview: "Library of 70+ free project-based learning units, templates, strategy guides, and rubrics for teachers and students.",
                    isPaid: false
                ),
                Resource(
                    title: "Khan Academy",
                    link: "https://www.khanacademy.org",
                    overview: "Free comprehensive courses and practice for SAT, AP, ACT, and many school subjects.",
                    isPaid: false
                ),
                Resource(
                    title: "College Board",
                    link: "https://www.collegeboard.org",
                    overview: "Official SAT, PSAT, AP exam practice materials and detailed test info.",
                    isPaid: false
                ),
                Resource(
                    title: "Fiveable",
                    link: "https://fiveable.me",
                    overview: "Free live and recorded AP exam prep classes, quizzes, and study guides created by top students.",
                    isPaid: false
                ),
                Resource(
                    title: "Albert.io",
                    link: "https://www.albert.io",
                    overview: "Extensive AP and SAT practice question banks, review guides, and progress tracking.",
                    isPaid: true
                ),
                Resource(
                    title: "UWorld",
                    link: "https://www.uworld.com",
                    overview: "High-quality adaptive question banks for AP, SAT, ACT, and other subjects with detailed explanations.",
                    isPaid: true
                ),
                Resource(
                    title: "Quizizz",
                    link: "https://quizizz.com",
                    overview: "Game-based learning platform with quizzes and flashcards across subjects and tests.",
                    isPaid: false
                ),
                Resource(
                    title: "EdX",
                    link: "https://www.edx.org",
                    overview: "Free and paid online courses from top universities on a wide range of subjects for enrichment beyond school.",
                    isPaid: false
                ),
                Resource(
                    title: "Coursera",
                    link: "https://www.coursera.org",
                    overview: "Large catalog of free and paid courses, many targeted for college prep and advanced subjects.",
                    isPaid: false
                ),
                Resource(
                    title: "Notion",
                    link: "https://www.notion.so",
                    overview: "Note-taking and project management app popular with students for organizing study material and projects.",
                    isPaid: false
                ),
                Resource(
                    title: "Trello",
                    link: "https://trello.com",
                    overview: "Visual organization and task management tool used by students for project planning and assignment tracking.",
                    isPaid: false
                ),
                Resource(
                    title: "Study.com",
                    link: "https://www.study.com",
                    overview: "Video lessons, practice tests, and study resources for AP, SAT, ACT, and college courses.",
                    isPaid: true
                ),
                Resource(
                    title: "Grammarly",
                    link: "https://www.grammarly.com",
                    overview: "AI-powered writing assistant to improve essays, reports, and writing assignments.",
                    isPaid: false
                ),
                Resource(
                    title: "Open Culture",
                    link: "http://www.openculture.com",
                    overview: "Free educational media including ebooks, audiobooks, and online courses for self-paced learning.",
                    isPaid: false
                )
            ]
            tableView.reloadData()
    }
}

// MARK: - UITableViewDataSource
extension ResourcesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resources.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResourceCell", for: indexPath) as! ResourceTableViewCell
        cell.configure(with: resources[indexPath.row])
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ResourcesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let resource = resources[indexPath.row]
        
        // Open the link in Safari
        if let url = URL(string: resource.link) {
            UIApplication.shared.open(url)
        }
    }
}

// MARK: - Resource Model
struct Resource {
    let title: String
    let link: String
    let overview: String
    let isPaid: Bool
}

// MARK: - Custom Cell
class ResourceTableViewCell: UITableViewCell {
    
    let titleLabel = UILabel()
    let linkLabel = UILabel()
    let overviewLabel = UILabel()
    let linkIcon = UIImageView()
    let priceBadge = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
    
    func setupViews() {
        titleLabel.font = .boldSystemFont(ofSize: 17)
        titleLabel.numberOfLines = 1
        
        linkLabel.font = .systemFont(ofSize: 13)
        linkLabel.textColor = .systemBlue
        linkLabel.numberOfLines = 1
        
        overviewLabel.font = .systemFont(ofSize: 14)
        overviewLabel.textColor = .gray
        overviewLabel.numberOfLines = 2
        
        linkIcon.image = UIImage(systemName: "link")
        linkIcon.tintColor = .systemBlue
        linkIcon.contentMode = .scaleAspectFit
        
        // Configure price badge
        priceBadge.font = .boldSystemFont(ofSize: 11)
        priceBadge.textAlignment = .center
        priceBadge.layer.cornerRadius = 4
        priceBadge.layer.masksToBounds = true
        priceBadge.translatesAutoresizingMaskIntoConstraints = false
        
        // Add to contentView
        [titleLabel, linkLabel, overviewLabel, linkIcon, priceBadge].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }
        
        // Layout constraints
        NSLayoutConstraint.activate([
            priceBadge.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            priceBadge.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            priceBadge.widthAnchor.constraint(equalToConstant: 50),
            priceBadge.heightAnchor.constraint(equalToConstant: 22),
            
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: priceBadge.leadingAnchor, constant: -8),
            
            linkIcon.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 6),
            linkIcon.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            linkIcon.widthAnchor.constraint(equalToConstant: 16),
            linkIcon.heightAnchor.constraint(equalToConstant: 16),
            
            linkLabel.centerYAnchor.constraint(equalTo: linkIcon.centerYAnchor),
            linkLabel.leadingAnchor.constraint(equalTo: linkIcon.trailingAnchor, constant: 4),
            linkLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            overviewLabel.topAnchor.constraint(equalTo: linkLabel.bottomAnchor, constant: 6),
            overviewLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            overviewLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            overviewLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12)
        ])
    }
    
    func configure(with resource: Resource) {
        titleLabel.text = resource.title
        linkLabel.text = resource.link
        overviewLabel.text = resource.overview
        
        // Configure badge
        if resource.isPaid {
            priceBadge.text = "PAID"
            priceBadge.backgroundColor = UIColor.systemOrange
            priceBadge.textColor = .white
        } else {
            priceBadge.text = "FREE"
            priceBadge.backgroundColor = UIColor.systemGreen
            priceBadge.textColor = .white
        }
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
