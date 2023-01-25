//
//  ReminderViewController+CellConfiguration.swift
//  UIContentViewDemo
//
//  Created by 平石　太郎 on 2023/01/25.
//

import UIKit

extension ReminderViewController {
    func headerConfiguration(for cell: UICollectionViewListCell, with title: String) -> UIListContentConfiguration {
        var contentConfiguration = cell.defaultContentConfiguration()
        contentConfiguration.text = title
        return contentConfiguration
    }
    
    func titleConfiguration(for cell: UICollectionViewListCell, with title: String?) -> TextFieldContentView.Configuration {
        var contentConfiguration = cell.textFieldConfiguration()
        contentConfiguration.text = title
        return contentConfiguration
    }
}
