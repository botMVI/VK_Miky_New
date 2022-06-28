//
//  Friends.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 24.06.2022.
//

import Foundation
import UIKit

struct Friends {
    let name: String
    var image: UIImage?
    
    let friend: [NewFriend]
}
//    init(name: String, image: UIImage? = nil){
//        self.image = image
//        self.name = name
//    }
 
struct NewFriend {
        let image: UIImage?
        let name: String
    }
    
let newFriend = [
        NewFriend(image: UIImage(named: "avatar1"), name: "Fred")
    ]
