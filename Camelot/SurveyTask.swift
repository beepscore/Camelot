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

    // NOTE: instructionStep can have an image
    let instructionStep = ORKInstructionStep(identifier: "IntroStep")
    instructionStep.title = "The Questions Three"
    instructionStep.text = "Who would cross the Bridge of Death must answer me these questions three, ere the other side they see."
    steps += [instructionStep]

    let nameAnswerFormat = ORKTextAnswerFormat(maximumLength: 20)
    nameAnswerFormat.multipleLines = false
    let nameQuestionStepTitle = "What is your name?"
    let nameQuestionStep = ORKQuestionStep(identifier: "QuestionStep",
        title: nameQuestionStepTitle, answer: nameAnswerFormat)
    steps += [nameQuestionStep]

    //TODO: add 'what is your quest' question

    //TODO: add color question step

    //TODO: add summary step

    return ORKOrderedTask(identifier: "SurveyTask", steps: steps)
}
