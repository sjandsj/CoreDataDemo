//
//  showDataViewController.swift
//  demoForCoreData
//
//  Created by Rails on 15/07/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class showDataViewController: UIViewController {

    @IBOutlet var showDataTableView: UITableView!
    
    var student = [Student]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        student = DataBaseHelper.shareInstance.getStudentData()
    }
}

extension showDataViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return student.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = showDataTableView.dequeueReusableCell(withIdentifier: "showData", for: indexPath) as! showDataTableViewCell
       cell.student = student[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            student = DataBaseHelper.shareInstance.deleteData(index: indexPath.row)
            self.showDataTableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
