//
//  iPad Support.swift
//  CalculatorLightDarkMode
//
//  Created by Roman Riepa on 02.03.2023.
//

import Foundation
import SwiftUI

extension UIDevice {
    static var isIPad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
    
    static var isIphone:Bool {
        UIDevice.current.userInterfaceIdiom == .phone
    }
}
