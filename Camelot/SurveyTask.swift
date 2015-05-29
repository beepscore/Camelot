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

    let questQuestionStepTitle = "What is your quest?"
    let textChoices = [
        ORKTextChoice(text: "Create a ResearchKit App", value: 0),
        ORKTextChoice(text: "Seek the Holy Grail", value: 1),
        ORKTextChoice(text: "Find a shrubbery", value: 2)
        ]
    let questAnswerFormat: ORKTextChoiceAnswerFormat =
    ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice,
        textChoices: textChoices)
    let questQuestionStep = ORKQuestionStep(identifier: "TextChoiceQuestionStep",
        title: questQuestionStepTitle, answer: questAnswerFormat)
    steps += [questQuestionStep]

    //TODO: add color question step

    //TODO: add summary step

    return ORKOrderedTask(identifier: "SurveyTask", steps: steps)
}