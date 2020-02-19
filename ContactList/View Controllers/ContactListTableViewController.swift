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
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of row
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
