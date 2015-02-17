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

class JMSTimerController {
    let statusBar : NSStatusBar
    let statusItem : NSStatusItem
    let menu : NSMenu
    let timerMenuItem : NSMenuItem
    let quitMenuItem : NSMenuItem
    let menuHandler = MenuHandler()
    
    init() {
        statusBar = NSStatusBar.systemStatusBar()
        statusItem = statusBar.statusItemWithLength(-2)
        menu = NSMenu(title: "HIMMEH")
        timerMenuItem = NSMenuItem(title: "JIMMEH", action: Selector("viewTimer:"), keyEquivalent: "")
        timerMenuItem.target = menuHandler
        quitMenuItem = NSMenuItem(title: "Quit", action: Selector("quitApplication:"), keyEquivalent: "Q")
        quitMenuItem.target = menuHandler

        statusItem.title = "🕘"
        statusItem.highlightMode = true
        statusItem.menu = menu
        menu.autoenablesItems = false
        menu.addItem(timerMenuItem)
        menu.addItem(quitMenuItem)
        
        timerMenuItem.enabled = true
        quitMenuItem.enabled = true
    }
}