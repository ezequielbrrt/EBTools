//
//  UIView+Extensions.swift
//  EBTools
//
//  Created by Ezequiel Barreto on 21/09/20.
//

import UIKit

extension UIView {
    /**
        TopAnchor Constraint to SafeArea
        - Returns NSLayoutYAxisAnchor

     */
    @available(iOS 9.0, *)
    public func getTopAnchor() -> NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.topAnchor
        }else{
            return self.topAnchor
        }
    }
    
    /**
     BottomAnchor Constraint to SafeArea
     - Returns NSLayoutYAxisAnchor

     */
    
    @available(iOS 9.0, *)
    public func getBottomAnchor() -> NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.bottomAnchor
        }else{
            return self.bottomAnchor
        }
    }
}
