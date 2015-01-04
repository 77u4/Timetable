//
//  AppDelegate.swift
//  Timetable
//
//  Created by Jannis on 04.01.15.
//  Copyright (c) 2015 Jannis Hutt. All rights reserved.
//

import Foundation
import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var currentLesson: NSTextField!
    @IBOutlet weak var currentLessonInfo: NSTextField!
    @IBOutlet weak var nextLesson: NSTextField!
    @IBOutlet weak var nextLessonInfo: NSTextField!
    

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: "refresh", userInfo: nil, repeats: true)
        self.refresh()
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    func refresh() {

    }

}

