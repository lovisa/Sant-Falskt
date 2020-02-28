//
//  MenuViewController.swift
//  Sant-Falskt
//
//  Created by Lovisa Jonsson on 2020-02-23.
//  Copyright © 2020 iLovisa. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {
    //var quizMachine = QuizMachine()
    var category = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectionButton(_ sender: UIButton) {
        
        category = sender.tag
        self.performSegue(withIdentifier: "startQuiz", sender: self)
       
        
    } /*
     } self.performSegue(withIdentifier: "math", sender: self)
     self.quizMachine.chooseCategori(sender.tag)
     prepare(for: GameVC, sender: <#T##Any?#>)  */
    
    
    
    /* override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
     if segue.identifier == "highScore" {
     // send score to HighScore
     let destinationVC = segue.destination as! HighScoreVC
     destinationVC.result = quizMachine.getPoint()
     } if else {
     
     }*/
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "startQuiz" {
            // send button tag to choose category
            let destinationVC = segue.destination as! GameVC
            destinationVC.category = category
        }
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
    }
        
}
