//
//  LikeControl.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 28.06.2022.
//

import UIKit

class LikeControl: UIControl {

    @IBOutlet var likePicture: UIImageView!
    var isLike: Bool = false
    
    override func awakeFromNib() {
        likePicture.backgroundColor = .clear
        likePicture.tintColor = .red
    }
}
