import Foundation
import UIKit

class QuestionsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    let cellIdentifier = "QuestionCell"
    var questions: [Question]!
    
    override func viewDidLoad() {
        questions = []
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let question = questions[indexPath.row]
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! QuestionCell
        cell.setQuestion(question)
        
        return cell
    }
    
    
    @IBAction func reset(segue: UIStoryboardSegue) {
        let createQuestionViewController = segue.sourceViewController as! CreateQuestionViewController
        let question = createQuestionViewController.question
        self.questions.append(question)
        self.tableView.reloadData()
    }
}