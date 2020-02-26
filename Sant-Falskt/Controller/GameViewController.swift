//
//  DestinationViewController.swift
//  Sant-Falskt
//
//  Created by Lovisa Jonsson on 2020-02-12.
//  Copyright © 2020 iLovisa. All rights reserved.
//

import UIKit

class GameViewController : UIViewController {
    
    @IBOutlet weak var timerBar: UIProgressView!
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizMachine = QuizMachine()
    var timer = Timer()
    let progress = Progress(totalUnitCount: 10)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        updateUI()
        startTimer()
        
        }
                
    
    @IBAction func answerButton(_ sender: UIButton) {
        // ANSWER CHECKING
        if quizMachine.checkAnswer(sender.tag) {
            // ljud
            timer.invalidate()
        
            
            quizMachine.nextQuestion()
            updateUI()
            startTimer()
            
        } else {
            //performSegue(withIdentifier: "highScore", sender: self)
            self.performSegue(withIdentifier: "wrongAnswer", sender: self)
            // ljud + vibrera
            // skicka points till highscore screen
            // gå till highscore screen
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            /*if segue.identifier == "highScore" {
             // send score to HighScore
            let destinationVC = segue.destination as! HighScoreVC
            destinationVC.result = quizMachine.getPoint()*/
        
            if segue.identifier == "wrongAnswer" {
               // send score to WrongAnswer
              let destinationVC = segue.destination as! WrongAnswerVC
              destinationVC.result = quizMachine.getPoint()
           }
    }
        
    func startTimer() {
        timerBar.progress = 0.0
        progress.completedUnitCount = 0
        
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {
                (timer) in
                guard self.progress.isFinished == false
                    else {
                    timer.invalidate()
                        //self.performSegue(withIdentifier: "highScore", sender: self)
                    return
                }
                
                self.progress.completedUnitCount += 1
                self.timerBar.setProgress(Float(self.progress.fractionCompleted), animated: true)
            }
    }
    
    
    func updateUI() {
        questionLabel.text = quizMachine.getQuestionText()
        pointsLabel.text = "\(quizMachine.getPoint()) / 50"
        //pointsLabel.text = quizMachine.getProgress()
        
    }
    
    @IBAction func cancelGame(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}


