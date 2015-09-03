//
//  AddToDoViewController.swift
//  To.Do
//
//  Created by Marcy Regalado on 9/2/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    // MARK: variables
    @IBOutlet var newTodo: UITextField!
    
    // MARK: properties
    var todoData: ToDoTableViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addTodo(sender: AnyObject) {
        todoData.addTodoItem(newTodo.text!)
        dismissViewControllerAnimated(true, completion: nil)
    }

}

