//
//  FriendsTableVC.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 24.06.2022.
//

import UIKit

class FriendsTableVC: UITableViewController {

//    let friends = [
//        Friends(name: "Игорь", lastName: "Ткач", image: UIImage(named: "avatar1")),
//        Friends(name: "Валерий", lastName: "Матко", image: UIImage(named: "avatar2")),
//        Friends(name: "Алексей", lastName: "Родинов", image: UIImage(named: "avatar4")),
//        Friends(name: "Мария", lastName: "Ивановна", image: UIImage(named: "avatar3")),
//        Friends(name: "Родион", lastName: "Петров", image: UIImage(named: "avatar5"))
//    ]
    
//    var sortedFriends = [Character: [Friends]]()
    
    let services = Services()
    let session = Session.shared
    var friends = [FriendsItems]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        services.getFriends(token: session.token) { friends in
            self.friends = friends
            print(friends)
        }
        
//        self.sortedFriends = sort(friends: friends)
    }

    // MARK: - Table view data source
    
//    private func sort(friends: [Friends]) -> [Character: [Friends]] {
//        var friendsDict = [Character: [Friends]]()
//
//        friends.forEach() { friend in
//
//            guard let firstChar = friend.lastName.first else {return}
//
//            if var thisCharFriends = friendsDict[firstChar] {
//                thisCharFriends.append(friend)
//                friendsDict[firstChar] = thisCharFriends
//            } else {
//                friendsDict[firstChar] = [friend]
//            }
//        }
//
//        return friendsDict
//    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
//        return sortedFriends.keys.count
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
//        let keySorted = sortedFriends.keys.sorted()
//        let friends = sortedFriends[keySorted[section]]?.count ?? 0
        
//        return friends
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell",
                                                       for: indexPath) as? FriendsCell else {
            preconditionFailure("Error")
        }
        
        
        
//        let firstChar = sortedFriends.keys.sorted()[indexPath.section]
//        let friends = sortedFriends[firstChar]!
        
//        let fullName = friends[indexPath.row].name + " " + friends[indexPath.row].lastName
        
        
//        cell.friendImage.image = friends[indexPath.row].image
//        cell.friendName.text = fullName
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowCurrentFriend",
           let destinationVC = segue.destination as? CurrentFriendCollectionVC,
           let indexPath = tableView.indexPathForSelectedRow {
            
//            let firstChar = sortedFriends.keys.sorted()[indexPath.section]
//            let friends = sortedFriends[firstChar]!
            
//            let fullName = friends[indexPath.row].name + " " + friends[indexPath.row].lastName
//            destinationVC.title = fullName
//            destinationVC.avatarImage = friends[indexPath.row].image
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        String(sortedFriends.keys.sorted()[section])
        return ""
    }
    
    // MARK: Кнопка выхода к логину
    @IBAction func exitToLogin(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = storyBoard.instantiateViewController(identifier: "LoginVC") as! ViewController
        self.present(loginVC, animated: true)
    }
}
