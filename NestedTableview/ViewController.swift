//
//  ViewController.swift
//  NestedTableview
//
//  Created by Aravindhan Natarajan on 03/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var parentTableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.prepareTableviewDelegates()
        
    }


    fileprivate func prepareTableviewDelegates() {
        self.parentTableview.dataSource = self
        self.parentTableview.delegate = self
        self.parentTableview.tableFooterView = UIView()
        self.parentTableview.register(UINib(nibName: "SubIssueStacksCell", bundle: nil), forCellReuseIdentifier: "SubIssueStacksCell")
    }
}

extension ViewController: UITableViewDataSource , UITableViewDelegate  {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = UITableViewCell()
            cell.backgroundColor = UIColor.white
            return cell
        }
        let cell  = tableView.dequeueReusableCell(withIdentifier: "SubIssueStacksCell") as! SubIssueStacksCell
        cell.createStack(with: 30)
        return cell
    }
    
}

// Height Delegate Methods
extension ViewController {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  indexPath.section  == 0 ? 300 : UITableView.automaticDimension
    }
    
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return  indexPath.section  == 0 ? 300 : UITableView.automaticDimension
//    }
}

// Header DataSource
extension ViewController {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section  == 0 {return nil}
        let titleHeader = UILabel()
        titleHeader.text = "Title Label \(section)"
        titleHeader.font = UIFont.boldSystemFont(ofSize: 24)
        return titleHeader
    }
    
}
