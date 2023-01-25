//
//  ReminderViewController+Section.swift
//  UIContentViewDemo
//
//  Created by 平石　太郎 on 2023/01/25.
//

import Foundation

extension ReminderViewController {
    enum Section: Int, Hashable {
        case title
        
        var name: String {
            switch self {
            case .title:
                return NSLocalizedString("Title", comment: "")
            }
        }
    }
}
