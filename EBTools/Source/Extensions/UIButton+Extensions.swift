//
//  UIButton+Extensions.swift
//  EBTools
//
//  Created by Ezequiel Barreto on 02/11/20.
//

import Foundation

extension UIButton {
    /** Function that returns and invisible button
        - Parameter target: target for action
        - Parameter action: action to perform on click
     */
    static public func getInvisible(target: Any?, action: Selector) -> UIButton {
        let button = UIButton(frame: .zero)
        button.clipsToBounds = true
        button.addTarget(target, action: action, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .clear
        return button
    }
    
    /** Add Some Text Space
        - Parameter spacing: CGFLoat
        - Parameter withTitle: String
        - Parameter color: UIColor?
     */
    public func addTextSpacing(spacing: CGFloat, withTitle title: String, color: UIColor?){
        let attributedString = NSMutableAttributedString(string: title)
        let range = NSRange(location: 0, length: title.count)
        
        attributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: range)
        if let textColor = color {
            attributedString.addAttributes([NSAttributedString.Key.foregroundColor : textColor], range:range)
        }
        self.setAttributedTitle(attributedString, for: .normal)
    }
    
    /** Set background color
        - Parameter color: UIColor
        - Parameter ForState: UIControl.State
     
     */
    public func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {

        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        UIGraphicsGetCurrentContext()!.setFillColor(color.cgColor)
        UIGraphicsGetCurrentContext()!.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        setBackgroundImage(colorImage, for: state)
    }
    
    /** Remove Left image if exists
     */
    public func removeLeftImage() {
        self.contentHorizontalAlignment = .center
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        self.setImage(nil, for: .normal)
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    /** Adds a left Image
        - Parameter image: UIImage
        - Parameter renderMode: UIImage.RenderingMode
     */
    public func leftImage(image: UIImage, renderMode: UIImage.RenderingMode, imageInsets: UIEdgeInsets, titleInsets: UIEdgeInsets) {
        self.setImage(image.withRenderingMode(renderMode), for: .normal)
        self.imageEdgeInsets = imageInsets
        self.contentHorizontalAlignment = .left
        self.imageView?.contentMode = .scaleToFill
        self.titleEdgeInsets = titleInsets
    }
}
