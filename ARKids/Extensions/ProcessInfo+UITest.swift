//
//  ProcessInfo+UITest.swift
//  ARKids
//
//  Created by Котя on 09/12/2019.
//  Copyright © 2019 Victor Sobolev. All rights reserved.
//

import Foundation

extension ProcessInfo {
    
    static var isUiTest: Bool {
        return ProcessInfo.processInfo.arguments.contains("UITest")
    }
    
}
