//
//  JMSTimerViewControllerTwo.swift
//  Timer
//
//  Created by Joseph Smith on 2/22/15.
//  Copyright (c) 2015 Joseph Smith. All rights reserved.
//

import Cocoa

class JMSTimerViewController: NSViewController {

    var notifier : JMSNotifier?
    var timer : JMSTimer?
    
    @IBOutlet weak var datePicker: NSDatePicker!
    
    @IBAction func start(sender: NSButton) {
        let selectedTime = datePicker.dateValue.timeIntervalSince1970
        let timezoneOffset = Double(NSTimeZone.localTimeZone().secondsFromGMT)
        println("Selected time: \(selectedTime) \n Offset: \(timezoneOffset)")
        let time = selectedTime + timezoneOffset
        timer?.start(time)
    }
    
    @IBAction func quit(sender: AnyObject) {
        exit(0)
    }
    
    override func viewDidLoad() {
        self.notifier = JMSNotifier()
        self.timer = JMSTimer(executingFunction: notifier!.sendNotification)
        super.viewDidLoad()
    }
    
}
