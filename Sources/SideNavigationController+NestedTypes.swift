//
//  SideNavigationController+NestedTypes.swift
//  DGSideNavigation
//
//  Created by Benoit BRIATTE on 13/03/2017.
//  Copyright © 2017 Digipolitan. All rights reserved.
//

import UIKit

public extension SideNavigationController {

    public enum Position {
        case front
        case back
    }

    public struct Side {

        public let viewController: UIViewController
        public let options: Options

        public init(viewController: UIViewController, options: Options) {
            self.viewController = viewController
            self.options = options
        }
    }

    public struct Options {

        public static var defaultTintColor = UIColor.white

        public var widthPercent: CGFloat
        public var animationDuration: TimeInterval
        public var overlayColor: UIColor
        public var overlayOpacity: CGFloat
        public var shadowOpacity: CGFloat
        public var alwaysInteractionEnabled: Bool
        public var panningEnabled: Bool
        public var scale: CGFloat
        public var position: Position
        public var closeHandler: ((Void) -> Void)?
        public var shadowColor: UIColor {
            get {
                return UIColor(cgColor: self.shadowCGColor)
            }
            set(newValue) {
                self.shadowCGColor = newValue.cgColor
            }
        }
        public fileprivate(set) var shadowCGColor: CGColor!

        public init(widthPercent: CGFloat = 0.33,
                    animationDuration: TimeInterval = 0.3,
                    overlayColor: UIColor = Options.defaultTintColor,
                    overlayOpacity: CGFloat = 0.5,
                    shadowColor: UIColor = Options.defaultTintColor,
                    shadowOpacity: CGFloat = 0.8,
                    alwaysInteractionEnabled: Bool = false,
                    panningEnabled: Bool = true,
                    scale: CGFloat = 1,
                    position: Position = .back,
                    closeHandler: ((Void) -> Void)? = nil) {
            self.widthPercent = widthPercent
            self.animationDuration = animationDuration
            self.overlayColor = overlayColor
            self.overlayOpacity = overlayOpacity
            self.shadowOpacity = shadowOpacity
            self.alwaysInteractionEnabled = alwaysInteractionEnabled
            self.panningEnabled = panningEnabled
            self.scale = scale
            self.position = position
            self.shadowColor = shadowColor
            self.closeHandler = closeHandler
        }
    }
}
