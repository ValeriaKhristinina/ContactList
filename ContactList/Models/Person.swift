//
//  Person.swift
//  ContactList
//
//  Created by Valeria Khristinina on 19/02/2020.
//  Copyright © 2020 Valeria Khristinina. All rights reserved.
//

import UIKit

struct Person {
	var name: String
	var surname: String
	var email: String
	var number: String
	
	var person: String {
		"\(name) \(surname)"
	}
}

extension Person {
	static func getContactList () -> [Person] {
		return [
			Person(name: "Jef", surname: "Bronislovas", email: "detoya1932@cmailing.com", number: "(402) 639-9955"),
			Person(name: "Nell", surname: "Usha", email: "dovoka1906@kamismail.com", number: "(530) 295-2786"),
			Person(name: "Noëlle", surname: "Celina", email: "nolis15680@link3mail.com", number: "(720) 294-6086"),
			Person(name: "Keanu", surname: "Nilus", email: "gexaka2589@twit-mail.com", number: "(856) 411-9805"),
		]
	}
}

