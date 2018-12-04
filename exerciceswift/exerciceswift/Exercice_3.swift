//
//  Exercice_3.swift
//  exerciceswift
//
//  Created by SUP'Internet 08 on 21/11/2018.
//  Copyright © 2018 SUP'Internet 08. All rights reserved.
//

import Foundation

extension String {
    func toDate(format: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.date(from: self)!
    }
}

extension Date {
    func toString(format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
    func getYearDifferenceFrom(date: Date) -> Int {
        return Calendar.current.dateComponents([.year], from: self, to: date).year!
    }
}

struct Email {
    var email: String?
    
    init(email: String) {
        self.email = email
    }
    
    func isValid() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self.email)
    }
}

class Existence {
    var birthdate: Date
    var age: Int
    
    init(date: Date?) {
        self.birthdate = date!
        let currentDate = NSDate()
        self.age = (date?.getYearDifferenceFrom(date: currentDate as Date))!
    }
    
    func willProbablyDieSoon() -> Bool {
        if self.age > 100 {
            return true
        } else {
            return false
        }
    }
    
}
