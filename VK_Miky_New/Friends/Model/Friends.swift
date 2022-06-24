//
//  Friends.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 24.06.2022.
//

import Foundation
import UIKit

class Friends {
    
    let name: String
    var image: UIImage?
    
    init(name: String, image: UIImage? = nil){
        self.image = image
        self.name = name
    }
}
