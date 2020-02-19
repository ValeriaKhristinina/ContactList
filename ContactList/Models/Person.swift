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
		
		var names: [String] = ["Jef", "Nell", "Noëlle", "Keanu"]
		var surnames: [String] = ["Bronislovas", "Usha", "Celina", "Nilus"]
		var emails: [String] = ["detoya1932@cmailing.com", "dovoka1906@kamismail.com", "nolis15680@link3mail.com", "gexaka2589@twit-mail.com"]
		var numbers: [String] = ["(402) 639-9955", "(530) 295-2786", "(720) 294-6086", "(856) 411-9805"]
		
		var randomNameArray: [Person] = []
		let lenghtArray = names.count
		
		while randomNameArray.count < lenghtArray {
			
			if let randomName = names.randomElement(),
				let randomSurname = surnames.randomElement(),
				let randomEmail = emails.randomElement(),
				let randomNumber = numbers.randomElement() {
				
				let person = Person(name: randomName,
									surname: randomSurname,
									email: randomEmail,
									number: randomNumber)
				
				randomNameArray.append(person)
				
				if let indexName = names.firstIndex(of: randomName),
					let indexSurname = surnames.firstIndex(of: randomSurname),
					let indexEmail = emails.firstIndex(of: randomEmail),
					let indexNumber = numbers.firstIndex(of: randomNumber) {
					names.remove(at: indexName)
					surnames.remove(at: indexSurname)
					emails.remove(at: indexEmail)
					numbers.remove(at: indexNumber)
				}
			}
			
		}
		return randomNameArray
	}
}


