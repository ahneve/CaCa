//
//  UIColor.swift
//  CaCa
//
//  Created by 소정의 Mac on 2022/11/02.
//

import UIKit

extension UIColor {
    // MARK: hex code를 이용하여 정의
    // ex. UIColor(hex: 0xF5663F)
    convenience init(hex: UInt, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
    
    // MARK: 메인 테마 색 또는 자주 쓰는 색을 정의
    // ex. label.textColor = .mainOrange
    class var caWhite: UIColor { UIColor(hex: 0xF2F2F2) }
    class var caDeepGreen: UIColor { UIColor(hex: 0x71736A) }
    class var caMediumGreen: UIColor { UIColor(hex: 0xA6A28F) }
    class var caDeepBeige: UIColor { UIColor(hex: 0xA67E6F) }
    class var caMediumBeige: UIColor { UIColor(hex: 0xD9C2AD) }
    
}
