//
//  EBToolsUI.swift
//  EBToolsUI
//
//  Created by Ezequiel Barreto on 21/09/20.
//

import UIKit

public final class EBToolsUI {
    init() {
    }
    
    // MARK: - GENERAL
    /**
        ImpactFeedback generator
        - Parameter style: UIImpactFeedbackStyle
     */
    @available(iOS 10.0, *)
    public final class func feedback(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style:.light)
        generator.impactOccurred()
    }

}
