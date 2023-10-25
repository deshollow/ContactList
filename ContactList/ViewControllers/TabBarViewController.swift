//
//  TabBarViewController.swift
//  ContactList
//
//  Created by deshollow on 25.10.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    var personsData = Person.getPersonData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        castingDataToViewControllers()
        
    }
    
    //MARK: Private casting method for views
    
    private func castingDataToViewControllers() {
        guard let viewControllers else { return }
        
        for viewController in viewControllers {
            if let personsVC = viewController as? PersonsListTableViewController {
                personsVC.personsData = personsData
            } else if let contactsVC = viewController as? ContactsTableViewController {
                contactsVC.personsData = personsData
            }
        }
    }
}
