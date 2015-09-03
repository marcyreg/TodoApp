//
//  ToDoTableViewController.swift
//  To.Do
//
//  Created by Marcy Regalado on 9/2/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    
    // MARK: Private data and variables 
    
    private var todoList = ["Unpack boxes","Look up Swift tutorials","Call mom"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    
    // MARK: accessing local memory
    
    
    func addTodoItem(item:String) {
        if !item.isEmpty {
            todoList.append(item)
            self.tableView.reloadData() //this also updates the current todo list
            navigationController?.popToRootViewControllerAnimated(true) //returns to the root view controller
        }
    }

    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let todoViewController = segue.destinationViewController as? AddToDoViewController {
            
            todoViewController.todoData = self
        }
        
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("todoItem", forIndexPath: indexPath) as! ToDoItemCell
        
        cell.todoItem?.text = todoList[indexPath.row]
        
        return cell
        
    }
    
    // MARK: user interactions (gestures controls)
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            todoList.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    

}
