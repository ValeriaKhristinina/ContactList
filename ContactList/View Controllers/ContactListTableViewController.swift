//
//  ContactListTableViewController.swift
//  ContactList
//
//  Created by Valeria Khristinina on 19/02/2020.
//  Copyright © 2020 Valeria Khristinina. All rights reserved.
//

import UIKit

class ContactListTableViewController: UITableViewController {
	
	var contactList = Person.getContactList()
	
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return contactList.count
    }
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "contactFullName", for: indexPath)
		cell.textLabel?.text = contactList[indexPath.row].person
        return cell
    }

    
    // MARK: - Navigation
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let person = contactList[indexPath.row]
		performSegue(withIdentifier: "contactInfoSegue", sender: person)
	}

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		if segue.identifier == "contactInfoSegue" {
			let contactInfoVC = segue.destination as! ContactInfoViewController
			contactInfoVC.person = sender as? Person
		}
    }

}
