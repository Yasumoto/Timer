//
//  JMSTimerView.swift
//  Timer
//
//  Created by Joseph Smith on 2/16/15.
//  Copyright (c) 2015 Joseph Smith. All rights reserved.
//

import Cocoa

class JMSTimerView: NSView {

    @IBOutlet weak var startButton: NSButton!
    @IBOutlet weak var timePicker: NSDatePicker!
    @IBOutlet weak var quitButton: NSButton!
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        // Drawing code here.
    }
    
}
