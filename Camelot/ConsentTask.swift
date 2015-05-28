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

    let signature = consentDocument.signatures!.first as! ORKConsentSignature

    let reviewConsentStep = ORKConsentReviewStep(identifier: "ConsentReviewStep",
        signature: signature, inDocument: consentDocument)

    reviewConsentStep.text = "Review Consent!"
    reviewConsentStep.reasonForConsent = "Consent to join study"
    steps += [reviewConsentStep]

    // app can use task identifier to retrieve results
    return ORKOrderedTask(identifier: "ConsentTask", steps: steps)
}
