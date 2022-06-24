//
//  GroupsTableVC.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 24.06.2022.
//

import UIKit

class GroupsTableVC: UITableViewController {
    
    var groups = [
        Groups(name: "SwiftBook", image: UIImage(named: "swiftIcon")),
        Groups(name: "Типичный программист", image: UIImage(named: "programming")),
        Groups(name: "Code is my cardio", image: UIImage(named: "coding")),
        Groups(name: "Музыка", image: UIImage(named: "music")),
        Groups(name: "YouTube", image: UIImage(named: "youtube"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return groups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsCell",
                                                       for: indexPath) as? GroupsCell else {
            preconditionFailure("Error")
        }
        
        cell.groupName.text = groups[indexPath.row].name
        cell.groupImage.image = groups[indexPath.row].image

        return cell
    }
    // MARK: Добавляем группу из поиска
    @IBAction func addSelectGroup(segue: UIStoryboardSegue) {
        
        if let sourceVC = segue.source as? SearchGroupsTableVC,
           let indexPath = sourceVC.tableView.indexPathForSelectedRow {
            
            let group = sourceVC.unknownGroups[indexPath.row]
            
            if !groups.contains(where: { $0.name == group.name }) {
                groups.append(group)
            
                tableView.reloadData()
            }
        }
    }
    
   // MARK: Удаление группы
    override func tableView(_ tableView: UITableView,
                            commit editingStyle: UITableViewCell.EditingStyle,
                            forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
