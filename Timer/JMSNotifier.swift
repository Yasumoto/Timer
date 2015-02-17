//
//  JMSNotifier.swift
//  Timer
//
//  Created by Joseph Smith on 2/16/15.
//  Copyright (c) 2015 Joseph Smith. All rights reserved.
//

import Foundation

/* Sends users alerts using OS X's `NSUserNotificationCenter` API. */
class JMSNotifier : NSObject, NSUserNotificationCenterDelegate {
    let center = NSUserNotificationCenter.defaultUserNotificationCenter()
    
    override init() {
        super.init()
        self.center.delegate = self
    }
    
    func sendNotification(message: String) {
        let notification = NSUserNotification()
        notification.title = "Head up!"
        notification.subtitle = message
        println(message)
        center.deliverNotification(notification)
    }
    
    /* Implementing `NSUserNotificationCenterDelegate` protocol */
    func userNotificationCenter(center: NSUserNotificationCenter,
        shouldPresentNotification notification: NSUserNotification) -> Bool {
        return true
    }
}