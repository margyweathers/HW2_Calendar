//
//  ViewController.swift
//  CS407hw2
//
//  Created by Margy on 3/10/16.
//  Copyright © 2016 Margy. All rights reserved.
//

import UIKit

// Global variable to persist data
var data = NSUserDefaults.standardUserDefaults()

class ViewController: UIViewController {
    
    
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (eventList.isEmpty){
            message.text = "No Events to Display"
        }
        else{
            message.text = "Swipe to Delete Event"
        }
//        print(NSUserDefaults.standardUserDefaults().dictionaryRepresentation())
//        for (var i = 0; i < 2; i += 1){
//            
//            var title = String(data.objectForKey(String(i))![0])
//            var date = String(data.objectForKey(String(i))![1])
//            print(title)
//            print(date)
//        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    // Number of cells in tableView
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return eventList.count
    }
    
    // Add an event to the tableView
    func tableView(tableView: UITableView!,
                   cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        
        let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"cell")

        cell.textLabel?.numberOfLines = 3
        cell.textLabel?.text = eventList[indexPath.row].title + " at " + eventList[indexPath.row].location + " on:" + "\n" + String(eventList[indexPath.row].dateStr)
        
        message.text = "Swipe to Delete Event"
        return cell
    }
    
    // Delete an event from the tableView and eventList array
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            eventList.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
        
        if (eventList.isEmpty){
            message.text = "No Events to Display"
        }
    }
    
    
}

