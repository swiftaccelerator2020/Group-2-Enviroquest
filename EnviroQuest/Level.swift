//
//  Level.swift
//  EnviroQuest
//
//  Created by Rachel Goh on 30/11/20.
//

import Foundation
class Level{
    var levelNumber: Int
    var questNames: Array<String>
    var questDescriptions: Array<String>
    init(levelNumber: Int, questNames: Array<String>, questDescriptions: Array<String>) {
        self.levelNumber = levelNumber
        self.questNames = questNames
        self.questDescriptions = questDescriptions
    }
}
