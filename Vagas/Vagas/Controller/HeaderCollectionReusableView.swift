//
//  HeaderCollectionReusableView.swift
//  Vagas
//
//  Created by Kelvin Javorski Soares on 17/01/21.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    static let identifier = "header"
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "header"
        label.textAlignment = .center
        label.textColor = UIColor(hexString: "#1F213C")
        return label
    }()
    
    public func configure(){
        addSubview(label)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = bounds
    }
}
