//
//  ViewController.swift
//  Camelot
//
//  Created by Steve Baker on 5/28/15.
//  Copyright (c) 2015 Beepscore LLC. All rights reserved.
//

import UIKit
import ResearchKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: ORKTaskViewControllerDelegate {

    func taskViewController(taskViewController: ORKTaskViewController,
        didFinishWithReason reason: ORKTaskViewControllerFinishReason,
        error: NSError?) {

        // TODO: Handle results using taskViewController.result
        taskViewController.dismissViewControllerAnimated(true, completion: nil)
    }

}
