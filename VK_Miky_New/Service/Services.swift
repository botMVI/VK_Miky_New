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
    
    func getFriends(token: String, completion: @escaping ([FriendsItems]) -> () ) {
        
        let url = baseURL + "/friends.get"
        let parametrs: Parameters = [
            "access_token": token,
            "v": "5.131",
            "count": 10,
            "fields": "city, country"
        ]
        
        AF.request(url, method: .get, parameters: parametrs).responseJSON { res in
            
            guard let data = res.data else { return }
            
            let friends = try! JSONDecoder().decode(FriendsResponse.self, from: data)
            completion(friends.response)
            
//            print("Result :\(response)")
        }
    }
    

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
//            print("Result 2: \(response)")
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
//            print("Result 3: \(response)")
        }
    }
    
    func getSerchedGroups(token: String) {
        
        let url = baseURL + "/groups.search"
        let parametrs: Parameters = [
            "access_token": token,
            "v": "5.131",
            "q": "Программирование Swift",
            "count": 10
        ]
        
        AF.request(url, method: .get, parameters: parametrs).responseJSON { response in
            
            guard let data = response.data else {return}
            
//            print("Result 4: \(response)")
        }
    }
    
//    struct Users: Decodable {
//
//
//    }
    
}
