//
//  CodeTitleCell.swift
//  Demo
//
//  Created by apple on 2019/8/28.
//  Copyright © 2019 test. All rights reserved.
//

import UIKit

import VueSwift
class CodeTitleCell: UITableViewCell {
    
    let label:UILabel = {
        let a = UILabel()
        return a
    }()
    
    let tap = UITapGestureRecognizer()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(label)
        self.contentView.addGestureRecognizer(tap)
        
        label.snp.makeConstraints { (make) in
            
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(30)
            make.bottom.equalTo(0)
            
        }
        
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func setV_Model(_ aModel: VueData) {
        
        if aModel is CodeTitleCellModel{
            
            let h = aModel as! CodeTitleCellModel
            label.text = h.name
            tap.v_tap {
                
                h.v_to()
            }
        }
    }
    
    
}
class CodeTitleCellModel: VueData{
    
    
    var name:String?
    
    override func v_height() -> CGFloat {
        return 80
    }
    init(_ text:String?) {
        name  = text
    }
}
