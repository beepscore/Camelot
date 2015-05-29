//
//  SurveyTask.swift
//  Camelot
//
//  Created by Steve Baker on 5/28/15.
//  Copyright (c) 2015 Beepscore LLC. All rights reserved.
//

import ResearchKit

public var SurveyTask: ORKOrderedTask {

    var steps = [ORKStep]()

    //TODO: add instructions step

    //TODO: add name question

    //TODO: add 'what is your quest' question

    //TODO: add color question step

    //TODO: add summary step

    return ORKOrderedTask(identifier: "SurveyTask", steps: steps)
}
