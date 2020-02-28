//
//  WrongAnswerVC.swift
//  Sant-Falskt
//
//  Created by Lovisa Jonsson on 2020-02-23.
//  Copyright © 2020 iLovisa. All rights reserved.
//

import UIKit

class WrongAnswerVC: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var result : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scoreLabel.text = String(result!)
    }
    
    @IBAction func cancelWrongAnswer(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
