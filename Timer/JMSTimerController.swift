//
//  JMSTimerController.swift
//  Timer
//
//  Created by Joseph Smith on 2/16/15.
//  Copyright (c) 2015 Joseph Smith. All rights reserved.
//

import AppKit
import Foundation

class MenuHandler : NSObject {
    func viewTimer (sender: NSMenuItem) {
        println("Clicked!")
    }
    
    func quitApplication(sender: NSMenuItem) {
        exit(0)
    }
}

class TimerView {
}

class JMSTimerController {
    let statusBar : NSStatusBar
    let statusItem : NSStatusItem
    let menu : NSMenu
    let menuHandler = MenuHandler()
    let view : JMSTimerView
    let menuItem : NSMenuItem
    
    init() {
        statusBar = NSStatusBar.systemStatusBar()
        statusItem = statusBar.statusItemWithLength(-2)
        menu = NSMenu(title: "HIMMEH")
        menuItem = NSMenuItem()
        view = JMSTimerView()

        statusItem.title = "🕘"
        statusItem.highlightMode = true
        statusItem.menu = menu
        menu.autoenablesItems = false
        menu.addItem(menuItem)
        menuItem.view = view
        menuItem.enabled = true
    }
}