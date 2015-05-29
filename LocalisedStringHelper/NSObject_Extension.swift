//
//  NSObject_Extension.swift
//
//  Created by Wilhelm Van Der Walt on 5/29/15.
//  Copyright (c) 2015 yster. All rights reserved.
//

import Foundation

extension NSObject {
    class func pluginDidLoad(bundle: NSBundle) {
        let appName = NSBundle.mainBundle().infoDictionary?["CFBundleName"] as? NSString
        if appName == "Xcode" {
        	if sharedPlugin == nil {
        		sharedPlugin = LocalisedStringHelper(bundle: bundle)
        	}
        }
    }
}