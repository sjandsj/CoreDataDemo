//
//  showDataTableViewCell.swift
//  demoForCoreData
//
//  Created by Rails on 15/07/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class showDataTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    
    var student: Student! {
        didSet{
            nameLabel.text = student.name
            addressLabel.text = student.address
            cityLabel.text = student.city
            numberLabel.text = student.number
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
