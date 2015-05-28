//
//  ConsentTask.swift
//  Camelot
//
//  Created by Steve Baker on 5/28/15.
//  Copyright (c) 2015 Beepscore LLC. All rights reserved.
//

import ResearchKit

public var ConsentTask: ORKOrderedTask {

    var steps = [ORKStep]()

    var consentDocument = ConsentDocument
    let visualConsentStep = ORKVisualConsentStep(identifier: "VisualConsentStep",
        document: consentDocument)
    steps += [visualConsentStep]

    //TODO: Add ConsentReviewStep

    // app can use task identifier to retrieve results
    return ORKOrderedTask(identifier: "ConsentTask", steps: steps)
}
