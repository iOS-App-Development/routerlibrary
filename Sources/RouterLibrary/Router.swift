//
//  Router.swift
//  RouterModule
//
//  Created by Muzammil Peer on 31/10/2021.
//  Copyright © 2021 Aman Aggarwal. All rights reserved.
//
import Foundation

public protocol Router : AnyObject{
    //base module functions
    func dismissModule(animated:Bool?,completion: (() -> Void)?)
    func popModule(animated:Bool?)
    func popToRootModule(animated:Bool?)
    
    //screen dismiss/pop functions
    func dismissScreen(animated:Bool,completion: (() -> Void)?)
    func popScreen(animated:Bool)
    func popAllScreens(animated:Bool)
}
