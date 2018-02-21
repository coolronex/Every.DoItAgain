//
//  ToDoCell.swift
//  Every.DoItAgain
//
//  Created by Aaron Chong on 2/21/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

import UIKit
import CoreData

class ToDoCell: UITableViewCell {

    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var descriptionTextLabel: UILabel!
    
    var toDo: ToDo! {
        didSet {
            self.configureCell()
        }
    }
    
    func configureCell() {
        titleTextLabel.text = toDo.title
        descriptionTextLabel.text = toDo.toDoDescription
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
}
