//
//  DatePickerContentView.swift
//  UIContentViewDemo
//
//  Created by 平石　太郎 on 2023/01/25.
//

import UIKit

class DatePickerContentView: UIView, UIContentView {
    struct Configuration: UIContentConfiguration {
        var date = Date.now

        func makeContentView() -> UIView & UIContentView {
            DatePickerContentView(self)
        }
        
        func updated(for state: UIConfigurationState) -> DatePickerContentView.Configuration {
            self
        }
    }

    private let datePicker = UIDatePicker()
    var configuration: UIContentConfiguration {
        didSet {
            configure(configuration: configuration)
        }
    }
    
    init(_ configuration: UIContentConfiguration) {
        self.configuration = configuration
        
        super.init(frame: .zero)
        addPinnedSubview(datePicker)
        
        datePicker.preferredDatePickerStyle = .inline
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(configuration: UIContentConfiguration) {
        guard let configuration = configuration as? Configuration else { return }
        configure(configuration: configuration)
    }
}

extension UICollectionViewListCell {
    func datePickerConfiguration() -> DatePickerContentView.Configuration {
        DatePickerContentView.Configuration()
    }
}
