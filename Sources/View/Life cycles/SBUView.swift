//
//  SBUView.swift
//  SendBirdUIKit
//
//  Created by Jaesung Lee on 2021/07/30.
//  Copyright © 2021 Sendbird, Inc. All rights reserved.
//

import UIKit

/// The `UIView` conforming to `SBUViewLifeCycle`
/// - Since: 2.2.0
@objcMembers
@IBDesignable
open class SBUView: UIView {
    /**
     Initializes `UIView` and set up subviews, auto layouts and actions for SendBirdUIKit.
     */
    public init() {
        super.init(frame: .zero)
        self.setupViews()
        self.setupAutolayout()
        self.setupActions()
    }
    
    /**
     Initializes `UIView` and set up subviews, auto layouts and actions for SendBirdUIKit.
     */
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupViews()
        self.setupAutolayout()
        self.setupActions()
    }
    
    @available(*, unavailable, renamed: "init(frame:)")
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.setupViews()
        self.setupAutolayout()
        self.setupActions()
    }
    
    /**
     Lays out subviews and set up styles for SendBirdUIKit.
     */
    open override func layoutSubviews() {
        super.layoutSubviews()
        self.setupStyles()
    }
}

extension SBUView: SBUViewLifeCycle {
    open func setupViews() { }
    
    open func setupAutolayout() { }
    
    open func setupStyles() { }
    
    open func setupActions() { }
}
