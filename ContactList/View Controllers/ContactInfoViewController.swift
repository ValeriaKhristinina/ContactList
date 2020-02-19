//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by Valeria Khristinina on 19/02/2020.
//  Copyright © 2020 Valeria Khristinina. All rights reserved.
//

import UIKit

class ContactInfoViewController: UIViewController {

	@IBOutlet var fullNameLabel: UILabel!
	@IBOutlet var emailLabel: UILabel!
	@IBOutlet var numberLabel: UILabel!
	
	var person: Person!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		fullNameLabel.text = person.person
		emailLabel.text = person.email
		numberLabel.text = person.number
    }
}
