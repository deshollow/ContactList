//
//  ViewController.swift
//  ContactList
//
//  Created by deshollow on 24.10.2023.
//

import UIKit

final class PersonsListTableViewController: UITableViewController {
    
    var personsData: [Person]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "details" {
            guard let detailsVC = segue.destination as? DetailsViewController else { return }
            detailsVC.personInfo = sender as? Person
        }
    }
}

//MARK: Extension for PersonListTableVoewController

extension PersonsListTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsData.count
    }
//MARK: Table preparing
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "persons", for: indexPath)
        let person = personsData[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.name) \(person.surname)"
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = personsData[indexPath.row]
        performSegue(withIdentifier: "details", sender: person)
    }
}
