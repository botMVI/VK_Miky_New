//
//  AvatarUIView.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 28.06.2022.
//

import UIKit

class AvatarUIView: UIView {

    @IBOutlet var shadowView: UIView!
    
    var shadowColor = UIColor.black
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        shadowView.layer.shadowColor = shadowColor.cgColor
        shadowView.layer.shadowOffset = .zero
        shadowView.layer.shadowRadius = 10
        shadowView.layer.shadowOpacity = 0.8
    }
    
    override func layoutSubviews() {
        shadowView.layer.cornerRadius = bounds.height / 2
    }
}
