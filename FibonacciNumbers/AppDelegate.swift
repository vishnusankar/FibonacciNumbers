//
//  AppDelegate.swift
//  FibonacciNumbers
//
//  Created by vishnusankar on 23/04/18.
//  Copyright © 2018 vishnusankar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var fn : Int = 9
    //    var fibonacciNo : Int64 = 0
    
    func fibonacciNumbers(fn : Int) {
        var fnValue1 : Int = 0
        var fnValue2 : Int = 1
        var fnCount = 0
        
        print(fnValue1)
        print(fnValue2)
        while fnCount < fn-1 {
            let tempValue2 = fnValue2
            fnValue2 = fnValue1 + fnValue2
            fnValue1 = tempValue2
            print(fnValue2)
            
            fnCount = fnCount + 1
        }
    }
    
    func fibonnacciRecurssive(f1:Int64, f2:Int64, fn : Int) {
        if fn == 0 {
            return
        }
        
        print("\(f1+f2)")
        self.fibonnacciRecurssive(f1: f2, f2: (f1+f2), fn: fn-1)
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("before - \(Date.timeIntervalSinceReferenceDate)")
        self.fibonnacciRecurssive(f1: 0, f2: 1, fn: 9)  // 651 MilleSecond
//        self.fibonacciNumbers(fn: 9) //692 MilleSecond
        print("after - \(Date.timeIntervalSinceReferenceDate)")
            return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

