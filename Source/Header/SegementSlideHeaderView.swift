//
//  SegementSlideHeaderView.swift
//  SegementSlide
//
//  Created by Jiar on 2018/12/7.
//  Copyright © 2018 Jiar. All rights reserved.
//

import UIKit

public class SegementSlideHeaderView: UIView {
    
    private weak var lastHeaderView: UIView?
    private weak var contentView: SegementSlideContentView?
    
    internal override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    internal required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        backgroundColor = .clear
    }
    
    internal func config(_ headerView: UIView?, contentView: SegementSlideContentView) {
        guard headerView != lastHeaderView else {
            return
        }
        if let lastHeaderView = lastHeaderView {
            lastHeaderView.removeAllConstraints()
            lastHeaderView.removeFromSuperview()
        }
        guard let headerView = headerView else {
            return
        }
        self.contentView = contentView
        addSubview(headerView)
        headerView.constraintToSuperview()
        lastHeaderView = headerView
    }

}
