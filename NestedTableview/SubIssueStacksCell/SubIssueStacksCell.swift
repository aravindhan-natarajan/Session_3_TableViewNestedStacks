//
//  SubIssueStacksCell.swift
//  NestedTableview
//
//  Created by Aravindhan Natarajan on 03/05/21.
//

import UIKit

class SubIssueStacksCell: UITableViewCell {

    @IBOutlet var holderstack: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func createStack(with count: Int) {
        for index in 0..<count {
            let view: SubIssueContentView = SubIssueContentView.loadFromXib()
            view.titleLabel.text = " [Firebase/Analytics][I-ACS032010] Cannot send request for Search Ad campaign attribution. Error: Error Domain=ADClientErrorDomain Code=1 Hello TataCliq Index Firebase/Analytics][I-ACS032010] Cannot send request for Search Ad campaign attribution. Error: Error Domain=ADClientErrorDomain Code=1 Hello TataCliq Index Firebase/Analytics][I-ACS032010] Cannot send request for Search Ad campaign attribution. Error: Error Domain=ADClientErrorDomain Code=1 Hello TataCliq Index Firebase/Analytics][I-ACS032010] Cannot send request for Search Ad campaign attribution. Error: Error Domain=ADClientErrorDomain Code=1 Hello TataCliq Index Firebase/Analytics][I-ACS032010] Cannot send request for Search Ad campaign attribution. Error: Error Domain=ADClientErrorDomain Code=1 Hello TataCliq Index: \(index)"
            holderstack.addArrangedSubview(view)
        }
    }
 
}



