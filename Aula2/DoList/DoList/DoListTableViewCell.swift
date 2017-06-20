//
//  DoListTableViewCell.swift
//  DoList
//
//  Created by Cristiano Diniz Pinto on 30/05/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit

class DoListTableViewCell: UITableViewCell {

    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    
    func load(item:DoItem){
        
        descLabel.text = item.getDescricao()
        dataLabel.text = item.getDataFormat()
        
    }
    
}
