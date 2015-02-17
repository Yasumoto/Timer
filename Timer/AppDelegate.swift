//
//  AppDelegate.swift
//  Timer
//
//  Created by Joseph Smith on 2/16/15.
//  Copyright (c) 2015 Joseph Smith. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let notifier : JMSNotifier
    let timer : JMSTimer
    let controller : JMSTimerController

    override init() {
        notifier = JMSNotifier()
        timer = JMSTimer(executingFunction: notifier.sendNotification)
        self.controller = JMSTimerController()
        super.init()
    }

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        timer.start(1.0)
    }
}