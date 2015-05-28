//
//  ConsentDocument.swift
//  Camelot
//
//  Created by Steve Baker on 5/28/15.
//  Copyright (c) 2015 Beepscore LLC. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentDocument: ORKConsentDocument {
    
    let consentDocument = ORKConsentDocument()
    consentDocument.title = "Example Consent"

    // NOTE: order matters. This order creates smooth animated transtions.
    // Could also add .Custom and .OnlyInDocument
    let consentSectionTypes: [ORKConsentSectionType] = [
        .Overview,
        .DataGathering,
        .Privacy,
        .DataUse,
        .TimeCommitment,
        .StudySurvey,
        .StudyTasks,
        .Withdrawing
    ]
    
    //TODO: signature
    
    return consentDocument
}
