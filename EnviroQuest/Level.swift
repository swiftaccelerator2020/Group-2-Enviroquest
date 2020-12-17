//
//  Level.swift
//  EnviroQuest
//
//  Created by Rachel Goh on 30/11/20.
//

import Foundation
public class Level{
    var levelNumber: Int
    var questNames: Array<String>
    var questDescriptions: Array<String>
    var questDone: Array<Bool>
    var levelCompleted: Bool
    init(levelNumber: Int, questNames: Array<String>, questDescriptions: Array<String>, questDone: Array<Bool>, levelCompleted: Bool) {
        self.levelNumber = levelNumber
        self.questNames = questNames
        self.questDescriptions = questDescriptions
        self.questDone = questDone
        self.levelCompleted = levelCompleted
    }
}
