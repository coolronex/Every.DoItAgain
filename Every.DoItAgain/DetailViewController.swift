//
//  DetailViewController.swift
//  Every.DoItAgain
//
//  Created by Aaron Chong on 2/21/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var numberTextField: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let toDo = toDo {
            if let titleLabel = titleTextLabel {
                titleLabel.text = toDo.title
                descriptionTextView.text = toDo.toDoDescription
                numberTextField.text = String(toDo.priorityNumber)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var toDo: ToDo? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

