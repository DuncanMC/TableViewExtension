//
//  MyTableViewCell.swift
//  TableViewExtension
//
//  Created by Duncan Champney on 12/23/16.
//  Copyright © 2016 Duncan Champney. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
  
  @IBOutlet weak var button: UIButton!
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
  
}
