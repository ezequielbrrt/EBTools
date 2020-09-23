//
//  EBToolsUI+ExtensionUIColor.swift
//  EBTools
//
//  Created by Ezequiel Barreto on 22/09/20.
//

import Foundation

extension EBToolsUI {
    /**
     Convert RGB values to UIColor
        - Parameter r: Red value
        - Parameter g: Green value
        - Parameter b: Blue value
        - Parameter alpha: Alpha value, 1.0 by default
     - Returns UIColor
     */
    public final class func rgbToColor(r: Int, g: Int, b: Int, alpha: Double = 1.0) -> UIColor {
        return UIColor(red: CGFloat(Double(r) / 255.0),
                       green: CGFloat(Double(r) / 255.0),
                       blue: CGFloat(Double(r) / 255.0),
                       alpha: CGFloat(alpha))
    }
}
