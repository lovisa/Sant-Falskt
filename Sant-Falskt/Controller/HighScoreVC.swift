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
    
    var gameVC = GameVC()
    var result = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        score.text = String(result)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userDefaults = Foundation.UserDefaults.standard
        let value = userDefaults.string(forKey: "Record")
        
        if (value == nil) {
            mathkHighScore.text = "0"
        } else {
            mathkHighScore.text = value
    }
        
    
    
 /*   @IBAction func clearHighScore(_ sender: UIButton) {
        mathkHighScore.text = "00"
        spellingHighScore.text = "00"
        englishHighScore.text = "00"
        lastScoreLabel.text = ""
        quizName.text = ""
        score.text = ""
    }*/
    
    }
        
    @IBAction func resetHighScore(_ sender: UIButton) {
       let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        UserDefaults.standard.synchronize()
       
        viewWillAppear(true)
        score.text = "0"
        //print(Array(UserDefaults.standard.dictionaryRepresentation().keys).count)
        /*func resetDefaults() {
            let defaults = UserDefaults.standard
            let dictionary = defaults.dictionaryRepresentation()
            dictionary.keys.forEach {
                key in defaults.removeObject(forKey: key)
            }
        }*/
    }
}

  /*
let scores = [12, 1, 8, 4, 23, 12, 9, 33]
let topThreeScores = scores.sorted(by: >).prefix(upTo: 3)
 
highScoreLabel.text = "High Score = (UserDefaults().integer(forKey: "HIGHSCORE"))"
 */
// print("\(topThreeScores)")
