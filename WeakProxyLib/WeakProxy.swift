//
//  WeakProxy.swift
//  WeakProxyLib
//
//  Created by Aman Verma on 27/06/24.
//


import Foundation

public class WeakProxy: NSObject {
    public weak var target: NSObjectProtocol?
    
    public init(target: NSObjectProtocol) {
        self.target = target
        super.init()
    }
    
    public override func responds(to aSelector: Selector!) -> Bool {
        return target?.responds(to: aSelector) ?? false
    }
    
    public override func forwardingTarget(for aSelector: Selector!) -> Any? {
        return target
    }
}
