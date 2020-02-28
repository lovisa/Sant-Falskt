//
//  QuizMachine.swift
//  Sant-Falskt
//
//  Created by Lovisa Jonsson on 2020-02-07.
//  Copyright © 2020 iLovisa. All rights reserved.
//

import Foundation


class QuizMachine {
    
    var questionNumber = 0
    var point = 0
    var category : String?
    
    var quiz : [Question]!
    
    let mathQuiz = [
        // 1 = sant, 2 = falskt
        Question(q: "57 + 12 - 10\n\n = 59\n", sant1_falskt2: 1),
        Question(q: "68 - 34 + 10\n\n = 44\n", sant1_falskt2: 1),
        Question(q: "8 + 190 -12 \n\n = 186\n", sant1_falskt2: 1),
        Question(q: "4 * 8 + 3\n\n = 35\n", sant1_falskt2: 1),
        Question(q: "48 - 29 * 2\n\n = 38\n ", sant1_falskt2: 1),
        Question(q: "9 * 5 - 28\n\n = 17\n", sant1_falskt2: 1),
        Question(q: "72 - 58 * 3\n\n = 62\n", sant1_falskt2: 2),
        Question(q: "6 * 14 - 50\n\n = 32\n", sant1_falskt2: 2),
        Question(q: "48 / 12 + 39\n\n = 43\n", sant1_falskt2: 1),
        Question(q: "12 + 79 * 3\n\n = 274\n", sant1_falskt2: 2),
        Question(q: "52 - 38 * 3\n\n = 42\n", sant1_falskt2: 1),
        Question(q: "25 - 13 * 7\n\n = 82\n", sant1_falskt2: 2),
        Question(q: "33 + 19 / 4\n\n = 12\n", sant1_falskt2: 2),
        Question(q: "64 / 4 - 9\n\n = 7\n", sant1_falskt2: 1),
        Question(q: "8 * 14 / 4\n\n = 28\n", sant1_falskt2: 1),
        Question(q: "29 - 11 + 65\n\n = 82\n ", sant1_falskt2: 2),
        Question(q: "13 + 29 + 37\n\n = 78\n", sant1_falskt2: 2),
        Question(q: "88 - 29 - 17\n\n = 40\n", sant1_falskt2: 2),
        Question(q: "96 - 37 - 11\n\n = 46\n", sant1_falskt2: 2),
        Question(q: "37 - 13 * 3\n\n = 72\n", sant1_falskt2: 1),
        Question(q: "44 - 27 * 4\n\n = 66\n", sant1_falskt2: 2)
        ].shuffled()
    
    let spellingQuiz = [
        Question(q: "abonnemang\n\n", sant1_falskt2: 1),
        Question(q: "hittils\n\n", sant1_falskt2: 2),
        Question(q: "skillsmässa\n\n", sant1_falskt2: 2),
        Question(q: "defenitivt\n\n", sant1_falskt2: 2),
        Question(q: "epidemi\n\n", sant1_falskt2: 1),
        Question(q: "parantes\n\n", sant1_falskt2: 2),
        Question(q: "konferens\n\n", sant1_falskt2: 1),
        ].shuffled()
    
    let englishQuiz = [
        Question(q: "\"graze\"\n\nbeta\n", sant1_falskt2: 1),
        Question(q: "\"nimble\"\n\nvig\n", sant1_falskt2: 1),
        Question(q: "\"virture\"\n\ndygd\n", sant1_falskt2: 1),
        Question(q: "\"liaison\"\n\nförbindelse\n", sant1_falskt2: 1),
        ].shuffled()
    
    init() {
        quiz = spellingQuiz
    }

    
    
    func choose(category: Int) {
        switch category {
        case 1:
            quiz = mathQuiz
            self.category = "Math"
        case 2:
            quiz = spellingQuiz
            
        case 3:
            quiz = englishQuiz
            
        default:
            quiz = mathQuiz
        }
    }
    
    func checkAnswer(_ userAnswer: Int) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            point += 1
            return true
        } else {
            return false
        }
    }

    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    
    func getPoint () -> Int {
        return point
    }
    
    func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            // questionNumber = 0
            //point = 0
            //self.performSegue(withIdentifier: "highScore", sender: self)
            // gå till skicka points till Highscore
            
            
        }
    }
    
}
