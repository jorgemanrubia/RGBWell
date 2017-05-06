//
//  AppDelegate.swift
//  RGBWell
//
//  Created by JORGE MANRUBIA DIEZ on 06/05/2017.
//  Copyright © 2017 JORGE MANRUBIA DIEZ. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var mainWindowController: MainWindowController?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        let mainWindowController = MainWindowController()
        mainWindowController.showWindow(self)
        self.mainWindowController = mainWindowController
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

