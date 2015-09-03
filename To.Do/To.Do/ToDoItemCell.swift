//
//  ToDoItemCell.swift
//  To.Do
//
//  Created by Marcy Regalado on 9/2/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class ToDoItemCell: UITableViewCell {
    
    
    //creating an outlet for this label item from the main storyboard 
    @IBOutlet var todoItem: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
