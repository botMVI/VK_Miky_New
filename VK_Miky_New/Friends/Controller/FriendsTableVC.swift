//
//  FriendsTableVC.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 24.06.2022.
//

import UIKit

class FriendsTableVC: UITableViewController {

    let friends = [
        Friends(name: "Игорь Ткач", image: UIImage(named: "avatar1"), friend: newFriend),
        Friends(name: "Валерий Матко", image: UIImage(named: "avatar2"), friend: newFriend),
        Friends(name: "Алексей Родинов", image: UIImage(named: "avatar4"), friend: newFriend),
        Friends(name: "Мария Ивановна", image: UIImage(named: "avatar3"), friend: newFriend),
        Friends(name: "Родион Петров", image: UIImage(named: "avatar5"), friend: newFriend)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell",
                                                       for: indexPath) as? FriendsCell else {
            preconditionFailure("Error")
        }
        
        cell.friendImage.image = friends[indexPath.row].image
        cell.friendName.text = friends[indexPath.row].name
        
        return cell
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "ShowCurrentFriend",
//           let destinationVC = segue.destination as? CurrentFriendCollectionVC,
//           let indexPath = tableView.indexPathForSelectedRow {
//            let titleFriendName = friends[indexPath.row].name
////            let currentFriendImage = friends[indexPath.row].image
//            destinationVC.title = titleFriendName
//            destinationVC.currentFriendArray = friends[indexPath.row].friend
//        }
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowCurrentFriend",
           let destinationVC = segue.destination as? CurrentFriendCollectionVC,
           let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.title = friends[indexPath.row].name
            destinationVC.currentFriendArray = friends[indexPath.row].friend
        }
    }
    
    // MARK: Кнопка выхода к логину
    @IBAction func exitToLogin(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = storyBoard.instantiateViewController(identifier: "LoginVC") as! ViewController
        self.present(loginVC, animated: true)
    }
}
