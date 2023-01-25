//
//  ReminderViewController+Row.swift
//  UIContentViewDemo
//
//  Created by 平石　太郎 on 2023/01/25.
//

import UIKit

extension ReminderViewController {
    enum Row: Hashable {
        case header(String)
        case editText(String?)
        
        var textStyle: UIFont.TextStyle {
            switch self {
            default: return .subheadline
            }
        }
    }
}
