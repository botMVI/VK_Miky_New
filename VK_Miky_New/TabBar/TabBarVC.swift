//
//  TabBarVC.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 08.08.2022.
//

import UIKit

class TabBarVC: UITabBarController {
    
    let session = Session.shared
    let services = Services()

    override func viewDidLoad() {
        super.viewDidLoad()

        services.getPhotos(token: session.token)
        services.getGroups(token: session.token)
        services.getSerchedGroups(token: session.token)
    }
}
