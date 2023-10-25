//
//  Person.swift
//  ContactList
//
//  Created by deshollow on 24.10.2023.
//

import Foundation

struct Person {
    
    var name: String
    var surname: String
    var phone: String
    var email: String
}

extension Person {
    
    //MARK: Method for shuffle an array
    
    static func getPersonDataShuffledArray(_ array: [String]) -> [String] {
        let shuffledArray = array.shuffled()
        return shuffledArray
    }
    
    //MARK: Method for shuffle person data from DataStore arrays
    
    static func getPersonData() -> [Person] {
        
        let dataStore = DataStore()
        
        let shuffledNames = getPersonDataShuffledArray(dataStore.names)
        let shuffledSurnames = getPersonDataShuffledArray(dataStore.surnames)
        let shuffledPhones = getPersonDataShuffledArray(dataStore.phones)
        let shuffledEmails = getPersonDataShuffledArray(dataStore.emails)
        
        var newArrayWithPersonData: [Person] = []
        
        for i in 0...4 {
            newArrayWithPersonData.append(Person(
                name: shuffledNames[i],
                surname: shuffledSurnames[i],
                phone: shuffledPhones[i],
                email: shuffledEmails[i])
            )
        }
        return newArrayWithPersonData
    }
}
