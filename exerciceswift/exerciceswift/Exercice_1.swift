//
//  Exercice_1.swift
//  exerciceswift
//
//  Created by SUP'Internet 01 on 09/11/2018.
//  Copyright © 2018 SUP'Internet 01. All rights reserved.
//

import Foundation

func condog(str: String, prefix: Character, suffix: String) -> String{
    var name: String = str;
    name.append(suffix)
    name.insert(prefix, at: name.startIndex)
    return name
}
