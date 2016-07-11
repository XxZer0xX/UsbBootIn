//
//  AppDelegate.swift
//  UsbBootIn
//
//  Created by Trae Moore on 7/10/16.
//  Copyright © 2016 Trae Moore. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var filename:String = "";

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func BrowseForFile(sender: AnyObject)
    {
        let dialog = NSOpenPanel();
        dialog.title                   = "Select .iso or .img";
        dialog.showsResizeIndicator    = true;
        dialog.showsHiddenFiles        = false;
        dialog.canChooseDirectories    = true;
        dialog.canCreateDirectories    = true;
        dialog.allowsMultipleSelection = false;
        dialog.allowedFileTypes        = ["iso","img"];
        
        if (dialog.runModal() == NSModalResponseOK) {
            let result = dialog.URL 
            
            if (result != nil) {
                let path = result!.path!
                filename = path;
                debugPrint(filename);
            }
        } else {
            // User clicked on "Cancel"
            return
        }
    }
    
}

