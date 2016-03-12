//
//  ViewEvents.swift
//  CS407hw2
//
//  Created by Margy on 3/11/16.
//  Copyright © 2016 Margy. All rights reserved.
//

import UIKit

class ViewEvents: UIViewController {
    
    @IBOutlet weak var viewList: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    var compareDate = NSDate()
    var compareDateComp: NSDateComponents!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    @IBAction func datePicked(sender: AnyObject) {
        compareDate = datePicker.date
        compareDateComp = calendar.components([.Month, .Day, .Year], fromDate: compareDate)
        
        viewList.text = ""
        for event in eventList{
            if (event.dateComponent.day == compareDateComp.day && event.dateComponent.month == compareDateComp.month && event.dateComponent.year == compareDateComp.year){
                
                viewList.text = viewList.text! + "\n" + event.title + " at " + event.location + " on: \n" + event.dateStr + "\n ----"
            }
            
            
            
        }
        
    }
    
    
    
    
}
