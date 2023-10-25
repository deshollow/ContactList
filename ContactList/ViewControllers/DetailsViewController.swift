//
//  DetailsViewController.swift
//  ContactList
//
//  Created by deshollow on 24.10.2023.
//

import UIKit

final class DetailsViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var personInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = personInfo.phone
        emailLabel.text = personInfo.email
    }
}
