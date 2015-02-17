//
//  JMSTimer.swift
//  Timer
//
//  Created by Joseph Smith on 2/16/15.
//  Copyright (c) 2015 Joseph Smith. All rights reserved.
//

import Foundation

/* Helper class which sets up a timer to fire in a runloop. If this is not run
in a full-blown Application (perhaps in a script), then you will need to call
`CFRunLoopRun()` to make sure a RunLoop starts off
*/
class JMSTimer {
    /* Command that will be executed when the timer has fired

    :param string: Message which can be used to clarify what occurred.
    */
    let executingFunction : (String) -> ()

    /* Method called by NSTimer which will call out to the passed in function

    :param timer: NSTimer which has fired
    */
    func timerDidFire(timer: NSTimer!) {
        self.executingFunction("Timer fired!")
    }

    /* Simple initializer used to print a message to the commandline */
    init() {
        self.executingFunction = {(message: String) in println("\(message)") }
    }

    init(executingFunction : (String) -> ()) {
        self.executingFunction = executingFunction
    }

    /* This method MUST be called in order to add the timer and method to the
    current runloop

    :param awaitTime: How long to pause before running the `executingFunction`
    */
    func start (awaitTime : Double) {
        let now = CFAbsoluteTimeGetCurrent()
        let scheduledTime = awaitTime + now
        println("Currently \(now). Will execute at \(scheduledTime)")
        let timer = CFRunLoopTimerCreateWithHandler(kCFAllocatorDefault, scheduledTime, 0, 0, 0, self.timerDidFire)
        CFRunLoopAddTimer(CFRunLoopGetCurrent(), timer, kCFRunLoopCommonModes)
    }
}