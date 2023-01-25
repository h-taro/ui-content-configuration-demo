//
//  TextFieldContentView.swift
//  UIContentViewDemo
//
//  Created by 平石　太郎 on 2023/01/25.
//

import UIKit

class TextFieldContentView: UIView, UIContentView {
    struct Configuration: UIContentConfiguration {
        var text: String? = nil
        
        func makeContentView() -> UIView & UIContentView {
            TextFieldContentView(self)
        }
        
        func updated(for state: UIConfigurationState) -> TextFieldContentView.Configuration {
            self
        }
    }
    
    private let textField = UITextField()
    var configuration: UIContentConfiguration {
        didSet {
            configure(configuration: configuration)
        }
    }
    
    init(_ configuration: UIContentConfiguration) {
        self.configuration = configuration
        
        super.init(frame: .zero)
        
        addPinnedSubview(textField, insets: UIEdgeInsets(top: .zero, left: 16, bottom: .zero, right: 16))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        CGSize(width: .zero, height: 44)
    }
    
    func configure(configuration: UIContentConfiguration) {
        guard let configuration = configuration as? Configuration else { return }
        textField.text = configuration.text
    }
}

extension UICollectionViewListCell {
    func textFieldConfiguration() -> TextFieldContentView.Configuration {
        TextFieldContentView.Configuration()
    }
}
