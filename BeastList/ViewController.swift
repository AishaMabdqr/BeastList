//
//  ViewController.swift
//  BeastList
//
//  Created by A Ab. on 11/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var tasks : [String] = []

    @IBOutlet weak var taskTextView: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }

    @IBAction func beastButPressed(_ sender: UIButton) {
        if let item = taskTextView.text {
            tasks.append(item)
            tableView.reloadData()
        }
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
    
}
