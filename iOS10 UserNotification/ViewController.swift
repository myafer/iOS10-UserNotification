//
//  ViewController.swift
//  iOS10 UserNotification
//
//  Created by fenrir-cd on 16/10/20.
//  Copyright © 2016年 fenrir CD. All rights reserved.
//

import UIKit
import UserNotifications
import CoreLocation

var badge = 0

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        sendLocalNotification()
        
        
        self.sendLocalNotification()
        self.sendLocalNotification1()
        self.sendLocalNotification2()

    }

    private func sendLocalNotification() {
        let center = UNUserNotificationCenter.current()

        let content: UNMutableNotificationContent = UNMutableNotificationContent.init()
        content.title = "titletitletitletitletitle"
        content.subtitle = "subtitle"
        content.body = "1"
        content.badge = (UIApplication.shared.applicationIconBadgeNumber + 1) as NSNumber
        content.sound = UNNotificationSound.default()
        
        let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 60, repeats: false)
        let requestIdentifier = "sampleRequest"
        let request = UNNotificationRequest.init(identifier: requestIdentifier, content: content, trigger: trigger)
        center.add(request, withCompletionHandler: { (error:Error?) in
            print("------ success")
        })
    }
    
    private func sendLocalNotification1() {
        let center = UNUserNotificationCenter.current()
        
        let content: UNMutableNotificationContent = UNMutableNotificationContent.init()
        content.title = "titletitletitletitletitle"
        content.subtitle = "subtitle"
        content.body = "2"
        content.badge = (UIApplication.shared.applicationIconBadgeNumber + 1) as NSNumber
        content.sound = UNNotificationSound.default()
        
        let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 70, repeats: false)
        let requestIdentifier = "sampleRequest"
        let request = UNNotificationRequest.init(identifier: requestIdentifier, content: content, trigger: trigger)
        center.add(request, withCompletionHandler: { (error:Error?) in
            print("------ success")
        })
    }
    
    private func sendLocalNotification2() {
        let center = UNUserNotificationCenter.current()
        
        let content: UNMutableNotificationContent = UNMutableNotificationContent.init()
        content.title = "titletitletitletitletitle"
        content.subtitle = "subtitle"
        content.body = "3"
        content.badge = (UIApplication.shared.applicationIconBadgeNumber + 1) as NSNumber
        content.sound = UNNotificationSound.default()
        
        let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 80, repeats: false)
        let requestIdentifier = "sampleRequest"
        let request = UNNotificationRequest.init(identifier: requestIdentifier, content: content, trigger: trigger)
        center.add(request, withCompletionHandler: { (error:Error?) in
            print("------ success")
        })
    }


}

