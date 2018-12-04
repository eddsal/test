//
//  main.swift
//  exerciceswift
//
//  Created by SUP'Internet 01 on 09/11/2018.
//  Copyright © 2018 SUP'Internet 01. All rights reserved.
//

import Foundation

print("Hello, World! 2")

print (condog(str: "evin", prefix: "L", suffix: "er"))

print(["Frodo", "Aragorn", "Boromir", "Legolas", "Gimli", "Gandalf", "Samsaget"])

print(cleanHobbits(arr: ["Frodo", "Aragorn", "Boromir", "Legolas", "Gimli", "Gandalf", "Samsaget"]))

print("2018".toDate(format: "YYYY"))

print("2017".toDate(format: "YYYY").toString(format: "YYYY"))

print("2017".toDate(format: "YYYY").getYearDifferenceFrom(date: "2018".toDate(format: "YYYY")))

var mail = Email(email: "ben@bob.fr")

print(mail.isValid())

var user = Existence(date: "1898".toDate(format: "YYYY"))

print(user.willProbablyDieSoon())
