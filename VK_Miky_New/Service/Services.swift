//
//  Services.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 11.08.2022.
//

import Foundation
import Alamofire

class Services {
    
    let baseURL = "https://api.vk.com/method"
    let session = Session.shared
    
    func getFriends(token: String) {
        
        let url = baseURL + "/friends.get"
        let parametrs: Parameters = [
            "access_token": token,
            "v": "5.131",
            "count": 10,
            "fields": "city, country"
        ]
        
        AF.request(url, method: .get, parameters: parametrs).responseJSON { response in
            print("Result :\(response)")
        }
    }
    
//https://api.vk.com/method/photos.get?user_ids=51398437&album_id=profile&access_token=vk1.a.-1xWErKmXzGG2T2cBPoELVja2cDTSfxY2aVQpeLJHrlIJ7Hcbl4weC5VIj8JfKBpCJAhd5xEuq-q6K0UlYRkMWQuaS_lpYynJDUZupWuBzp5eXAv3TwC8QEqopGJh5S6T6TXWrAHJojdifVH2AtfV-Oon6HA-88DM4Z1SEdTng2IJz4IjFwdKLdTjtlBpGt-&v=5.131
    func getPhotos(token: String) {
        
        let url = baseURL + "/photos.get"
        let parametrs: Parameters = [
            "access_token": token,
            "v": "5.131",
            "user_ids": "\(session.userId)",
            "count": 10,
            "album_id": "profile"
        ]
        
        AF.request(url, method: .get, parameters: parametrs).responseJSON { response in
            print("Result 2: \(response)")
        }
    }
    
    func getGroups(token: String) {
        
        let url = baseURL + "/groups.get"
        let parametrs: Parameters = [
            "access_token": token,
            "v": "5.131",
            "user_ids": "\(session.userId)",
            "count": 10
        ]
        
        AF.request(url, method: .get, parameters: parametrs).responseJSON { response in
            print("Result 3: \(response)")
        }
    }
    
    func getSerchedGroups(token: String) {
        
        let url = baseURL + "/groups.search"
        let parametrs: Parameters = [
            "access_token": token,
            "v": "5.131",
//            "user_ids": "\(session.userId)",
            "q": "Программирование Swift",
            "count": 10
        ]
        
        AF.request(url, method: .get, parameters: parametrs).responseJSON { response in
            print("Result 4: \(response)")
        }
    }
    
}
