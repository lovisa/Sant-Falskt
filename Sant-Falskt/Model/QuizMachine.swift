//
//  QuizMachine.swift
//  Sant-Falskt
//
//  Created by Lovisa Jonsson on 2020-02-14.
//  Copyright © 2020 iLovisa. All rights reserved.
//

import Foundation


struct QuizMachine {
    
   let quiz = [
        // 1 = sant, 2 = falskt
        Question(q: "57 + 12 - 10\n\n = 59\n", sant1_falskt2: 1),
        Question(q: "68 - 34 + 10\n\n = 44\n", sant1_falskt2: 1),
        Question(q: "8 + 190 -12 \n\n = 186\n", sant1_falskt2: 1),
        Question(q: "4  * 8 + 3\n\n = 35\n", sant1_falskt2: 1),
        Question(q: "48 - 29 * 2\n\n = 38\n ", sant1_falskt2: 1),
        Question(q: "9 * 5 - 28\n\n = 17\n", sant1_falskt2: 1),
        Question(q: "\"graze\"\n\nbeta\n", sant1_falskt2: 1),
        Question(q: "\"nimble\"\n\nvig\n", sant1_falskt2: 1),
        Question(q: "\"virture\"\n\ndygd\n", sant1_falskt2: 1),
        Question(q: "\"liaison\"\n\nförbindelse\n", sant1_falskt2: 1),
        Question(q: "abonnemang\n\n", sant1_falskt2: 1),
        Question(q: "hittils\n\n", sant1_falskt2: 2),
        Question(q: "skillsmässa\n\n", sant1_falskt2: 2),
        Question(q: "defenitivt\n\n", sant1_falskt2: 2),
        Question(q: "epidemi\n\n", sant1_falskt2: 1),
        Question(q: "parantes\n\n", sant1_falskt2: 2),
        Question(q: "konferens\n\n", sant1_falskt2: 1),
        Question(q: "14", sant1_falskt2: 1),
        Question(q: "15", sant1_falskt2: 1),
        Question(q: "16", sant1_falskt2: 1),
    ].shuffled()
    /*
        
        Question(q: "17", a: "Sant"),
        Question(q: "18", a: "Sant"),
        Question(q: "19", a: "Sant"),
        Question(q: "20", a: "Sant"),
        Question(q: "21", a: "Sant"),
        Question(q: "22", a: "Sant"),
        Question(q: "23", a: "Sant"),
        Question(q: "24", a: "Sant"),
        Question(q: "25", a: "Sant"),
        Question(q: "26", a: "Sant"),
        Question(q: "27", a: "Sant"),
        Question(q: "28", a: "Sant"),
        Question(q: "29", a: "Sant"),
        Question(q: "30", a: "Sant"),
        Question(q: "31", a: "Sant"),
        Question(q: "32", a: "Sant"),
        Question(q: "33", a: "Sant"),
        Question(q: "34", a: "Sant"),
        Question(q: "35", a: "Sant"),
        Question(q: "36", a: "Sant"),
        Question(q: "37", a: "Sant"),
        Question(q: "38", a: "Sant"),
        Question(q: "39", a: "Sant"),
        Question(q: "40", a: "Sant"),
        Question(q: "41", a: "Sant"),
        Question(q: "42", a: "Sant"),
        Question(q: "43", a: "Sant"),
        Question(q: "44", a: "Sant"),
        Question(q: "45", a: "Sant"),
        Question(q: "46", a: "Sant"),*/
    
    
   
    
    
    var questionNumber = 0
    //var randomNumber = Int(arc4random_uniform(UInt32(quiz.count - 1)))
     // Random number, never same, finish when all used
     //Int.random(in: 0...49)
     //Int(arc4random_uniform(50))
    // array.remove(at: 0)
    var point = 0
  
    mutating func checkAnswer(_ userAnswer: Int) -> Bool {
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
    
    // ändras till antal rätt svar när random!
    //func getProgress() -> String {
    //    let progress = String(questionNumber)
    //    return progress
    //}
    
    func getPoint () -> Int {
        return point
    }
    
    mutating func nextQuestion() {
    if questionNumber + 1 < quiz.count {
        questionNumber += 1
    } else {
        // questionNumber = 0
        //point = 0
    
        // skicka points till Highscore
        // Grattis, full pott! Ev ny screen eller gå till Highscore
        
    }
    }
    

    
    
    
}
