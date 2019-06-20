//
//  MCCategoryBarCell.swift
//  MCPageViewController_Example
//
//  Created by 满聪 on 2019/6/4.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

public class MCCategoryBarCell: UICollectionViewCell {
    
    
    public var model = MCCategoryBarModel() {
        didSet {
            titleLabel.text = model.title
            
            if model.isSelected {
                titleLabel.textColor = model.selectedColor
                titleLabel.font = model.selectFont
            } else {
                titleLabel.textColor = model.normalColor
                titleLabel.font = model.normalFont
            }
            
            backgroundColor = model.itemBackgroundColor

        }
    }
    

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = frame
        self.contentView.addSubview(titleLabel)
        titleLabel.snp.remakeConstraints { (make) ->Void in
            make.edges.equalTo(self.contentView)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
}
