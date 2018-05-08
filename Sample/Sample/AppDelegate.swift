//
//  AppDelegate.swift
//  Sample
//
//  Created by Meniny on 2018-05-09.
//  Copyright © 2018年 Meniny Lab. All rights reserved.
//

import Cocoa
import Bash

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        do {
            print("--")
            print(try Bash.run("pwd"))
            print("--")
            print(try Bash.run("cd", args: "~/Desktop"))
            print("--")
            print(try Bash.run("pwd"))
            print("--")
            print(try Bash.run("ls", args: "-al"))
            print("--")
            print(try Bash.run("mkdir", args: "BashTest"))
            print("--")
            print(try Bash.run("ls", args: "-al"))
        } catch {
            print("++")
            print(error)
            print("++")
        }
        
        print("==")
        print(Bash.exec(commands: "cd ~/Desktop", "mkdir BashTest", "ls -al"))
        
        print(Bash.exec(commands: "open ~/Desktop/BashTest"))
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

