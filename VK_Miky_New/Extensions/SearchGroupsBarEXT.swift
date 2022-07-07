//
//  SearchGroupsBarEXT.swift
//  VK_Miky_New
//
//  Created by Michael Iliouchkin on 01.07.2022.
//

import Foundation
import UIKit

extension GroupsTableVC: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

        self.filteredGroups.removeAll()

        guard searchText != "" || searchText != " " else {
            print("Empty search")
            return
        }

        for item in groups {
            
            let text = searchText.lowercased()
            let isArrayContain = item.name.lowercased().range(of: text)

            if isArrayContain != nil {
                print("Search Complited!")
                filteredGroups.append(item.name)
            }
        }
        print(filteredGroups)
        
        if searchBar.text == "" {
            isSearching = false
            tableView.reloadData()
        } else {
            isSearching = true
//            filteredGroups = groups.filter({ $0.name.contains(searchBar.text ?? "") })
            tableView.reloadData()
        }
    }
}
