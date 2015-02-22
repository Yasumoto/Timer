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


    let controller : JMSTimerController

    override init() {
        self.controller = JMSTimerController()
        super.init()
    }
}