//
//  MBScale.swift
//  DBMerchantProject
//
//  Created by mbApple on 2018/2/9.
//  Copyright © 2018年 杭州稻本信息技术有限公司. All rights reserved.
//

import UIKit

fileprivate let scalePlus:CGFloat = 1.10  // plus
fileprivate let scale5s:CGFloat = 0.85  // 5
fileprivate let scale6:CGFloat = 1.00  // 6
let KscreenWidth = UIScreen.main.bounds.size.width
let KscreenHeight = UIScreen.main.bounds.size.height

extension Int{
    func scale() -> CGFloat {
        if KscreenWidth == 414 {
            return CGFloat(self) * scalePlus
        }else if KscreenWidth == 375{
            return CGFloat(self)
        }else if KscreenWidth == 320{
            return CGFloat(self) * scale5s
        }else{
            return CGFloat(self)
        }
    }
    
    public var toCGFloat: CGFloat { return CGFloat(self) }
    
}

// MARK: - Double extensions
extension Double {
    
    // MARK: - Double convert CGFloat
    var toCGFloat: CGFloat {
        return CGFloat(self)
    }
    
    // MARK: - 金额格式化
    var formatter: String {
        return String(format: "¥ %.2f", self * 0.01)
    }
}
