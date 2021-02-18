//
//  SurveyButton.swift
//  calStackView
//
//  Created by Hardy  on 2/17/21.
//

import UIKit

class SurveyButton: UIButton{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton() {
        setTitleColor(.white, for: .normal)
        
        backgroundColor = .orange
        titleLabel?.font = UIFont(name: "AvenirNext-DemiBoldItalic", size: 36)
        //layer.frame.size = CGSize(width: 30, height: 30)
        layer.cornerRadius = frame.size.width / 2
        clipsToBounds = true
    }
    
    
}
