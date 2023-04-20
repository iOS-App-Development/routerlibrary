//
//  Storyboarded.swift
//  RouterModule
//
//  Created by Muzammil Peer on 31/10/2021.
//  Copyright © 2021 Aman Aggarwal. All rights reserved.
//


import Foundation
import UIKit

public protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static public func instantiate() -> Self {
        // this pulls out "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)
        
        // this splits by the dot and uses everything after, giving "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]
        
        // load our storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
//    com.muzammilpeer.ShopModule
    static public func instantiate(storyboardName:String) -> Self {
        // this pulls out "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)
        
        // this splits by the dot and uses everything after, giving "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]
        
        // load our storyboard
        let storyboardBundle = Bundle(for: self)
        let storyboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)
        
        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
    
    static public func instantiate(storyboardBundle:Bundle,storyboardName:String) -> Self {
        // this pulls out "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)
        
        // this splits by the dot and uses everything after, giving "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]
        
        // load our storyboard
        let storyboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)
        
        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
