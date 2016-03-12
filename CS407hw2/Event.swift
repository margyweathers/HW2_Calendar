//
//  Event.swift
//  CS407hw2
//
//  Created by Margy on 3/10/16.
//  Copyright © 2016 Margy. All rights reserved.
//

import Foundation

var key = 0
let calendar = NSCalendar.currentCalendar()

public class event{
    
    var title: String
    var location: String
    var date: NSDate
    
    var dateStr: String
    var dateComponent: NSDateComponents
    
    
    init(newTitle: String, newLocation: String, newDate: NSDate){
        self.title = newTitle
        self.location = newLocation
        self.date = newDate
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
        dateFormatter.timeStyle = .ShortStyle
        dateStr = dateFormatter.stringFromDate(date)
        dateComponent = calendar.components([.Month, .Day, .Year], fromDate: date)
        
    }
    
 
}