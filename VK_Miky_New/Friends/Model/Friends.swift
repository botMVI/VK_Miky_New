//
//  Friends.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 24.06.2022.
//

import Foundation
import UIKit

class FriendsResponse: Decodable {
    let response: [FriendsItems]
}

class FriendsItems: Decodable {
    let items: [FriendsModel]
}

class FriendsModel: Decodable {
    var name: String = ""
    var lastName: String = ""
    var image: UIImage?
    
    enum CodingKeys: String, CodingKey {
        case name = "first_name"
        case lastName = "last_name"
        case image = "photo_100"
    }
    
    convenience required init(from decoder: Decoder) throws {
        self.init()
        
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        self.name = try values.decode(String.self, forKey: .name)
        self.lastName = try values.decode(String.self, forKey: .lastName)
    }
}

