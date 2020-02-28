//
//  DestinationViewController.swift
//  Sant-Falskt
//
//  Created by Lovisa Jonsson on 2020-02-07.
//  Copyright © 2020 iLovisa. All rights reserved.
//

import UIKit

class GameVC : UIViewController {
    
    @IBOutlet weak var timerBar: UIProgressView!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var category: Int?
    
    var quizMachine = QuizMachine()
    var timer = Timer()
    let progress = Progress(totalUnitCount: 10)
    var recordData : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefaults = Foundation.UserDefaults.standard
        if let category = quizMachine.category {
            let value = userDefaults.string(forKey: category)
            recordData = value
        }
        
        guard let category = category else { return}
           
        quizMachine.choose(category: category)
        updateUI()
        startTimer()
        
    }
                
    
    @IBAction func answerButton(_ sender: UIButton) {
        // Check answer
        if quizMachine.checkAnswer(sender.tag) {
            // ljud
            timer.invalidate()
            quizMachine.nextQuestion()
            updateUI()
            startTimer()
 
            
        } else {
            
            timer.invalidate()
            self.performSegue(withIdentifier: "highScore", sender: self)
            saveHighScore()
            
            // ljud + vibrera
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                
            if segue.identifier == "highScore" {
                 // send score to HighScore
                let destinationVC = segue.destination as! HighScoreVC
                destinationVC.result = quizMachine.getPoint()
                
           }
            
    }
        
    func startTimer() {
        timerBar.progress = 0.0
        progress.completedUnitCount = 0
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
            (timer) in guard self.progress.isFinished == false
                else {
                    
                timer.invalidate()
                self.performSegue(withIdentifier: "highScore", sender: self)
                self.saveHighScore()
                return
                    
                }
                
                self.progress.completedUnitCount += 1
                self.timerBar.setProgress(Float(self.progress.fractionCompleted), animated: true)
            }
    }
    
    
    func updateUI() {
        questionLabel.text = quizMachine.getQuestionText()
        pointsLabel.text = "\(quizMachine.getPoint()) / \(quizMachine.quiz.count)"
        //pointsLabel.text = quizMachine.getProgress()
        
    }
    
    // save high score to core data
    func saveHighScore() {
        if recordData == nil {
            let savedScore = quizMachine.getPoint()
            let userDefaults = Foundation.UserDefaults.standard
            userDefaults.set(savedScore, forKey: "Record")
        } else {
            let score: Int? = quizMachine.getPoint()
            let record: Int? = Int(recordData)
            
            if score! > record! {
                let savedScore = quizMachine.getPoint()
                let userDefaults = Foundation.UserDefaults.standard
                userDefaults.set(savedScore, forKey: "Record")
            }
        }
    }
    
    
    
    @IBAction func cancelGame(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}


