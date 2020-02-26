//
//  HighScoreViewControler.swift
//  Sant-Falskt
//
//  Created by Lovisa Jonsson on 2020-02-14.
//  Copyright © 2020 iLovisa. All rights reserved.
//

import UIKit

class HighScoreVC: UIViewController {

    @IBOutlet weak var mathkHighScore: UILabel!
    @IBOutlet weak var spellingHighScore: UILabel!
    @IBOutlet weak var englishHighScore: UILabel!
    @IBOutlet weak var lastScoreLabel: UILabel!
    @IBOutlet weak var quizName: UILabel!
    @IBOutlet weak var score: UILabel!
    
    var result : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //score.text = String(result!)
    }
    
    
  /*
let scores = [12, 1, 8, 4, 23, 12, 9, 33]
let topThreeScores = scores.sorted(by: >).prefix(upTo: 3)
 */

// print("\(topThreeScores)")
    @IBAction func clearHighScore(_ sender: UIButton) {
        mathkHighScore.text = "00"
        spellingHighScore.text = "00"
        englishHighScore.text = "00"
        lastScoreLabel.text = ""
        quizName.text = ""
        score.text = ""
    }
    
}
