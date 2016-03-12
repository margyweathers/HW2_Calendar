//
//  CreateEvent.swift
//  CS407hw2
//
//  Created by Margy on 3/10/16.
//  Copyright © 2016 Margy. All rights reserved.
//

import Foundation
import UIKit

// Global array of events
var eventList = [event]()

class CreateEvent: UIViewController {
    
    @IBOutlet weak var eventName: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    var date = NSDate()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func eventDate(sender: AnyObject) {
        date = datePicker.date
    }
    
    
    @IBAction func save(sender: AnyObject) {
        let newEvent = event(newTitle: eventName.text!, newLocation: location.text!, newDate: date)
        eventList.append(newEvent)
    }
    

}