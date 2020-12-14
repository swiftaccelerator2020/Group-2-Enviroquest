//
//  levelDoneOrNot.swift
//  EnviroQuest
//
//  Created by Rachel Goh on 14/12/20.
//

import Foundation
public class levelDoneOrNot{
    var levelNumber: Int
    var questDone: Array<Bool>
    var levelDone: Bool

    init(levelNumber: Int, questDone: Array<Bool>, levelDone: Bool) {
        self.levelNumber = levelNumber
        self.questDone = questDone
        self.levelDone = levelDone
    }
    
}
