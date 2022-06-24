//
//  SearchGroupsTableVC.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 24.06.2022.
//

import UIKit

class SearchGroupsTableVC: UITableViewController {
    
    let unknownGroups = [
        Groups(name: "SwiftBook", image: UIImage(named: "swiftIcon")),
        Groups(name: "Типичный программист", image: UIImage(named: "programming")),
        Groups(name: "Code is my cardio", image: UIImage(named: "coding")),
        Groups(name: "Музыка", image: UIImage(named: "music")),
        Groups(name: "YouTube", image: UIImage(named: "youtube")),
        Groups(name: "GB", image: UIImage(named: "brain")),
        Groups(name: "Новости", image: UIImage(named: "news")),
        Groups(name: "Игры", image: UIImage(named: "music")),
        Groups(name: "Dota 2", image: UIImage(named: "music")),
        Groups(name: "Чип Дип", image: UIImage(named: "music")),
        Groups(name: "Компьютерная безопасность", image: UIImage(named: "music")),
        Groups(name: "MDK", image: UIImage(named: "music")),
        Groups(name: "Спорт", image: UIImage(named: "music")),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return unknownGroups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "UnknownGroups", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = unknownGroups[indexPath.row].name
        content.image = unknownGroups[indexPath.row].image
        
        cell.contentConfiguration = content

        return cell
    }
}
