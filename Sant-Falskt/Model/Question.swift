//
//  Question.swift
//  Sant-Falskt
//
//  Created by Lovisa Jonsson on 2020-02-14.
//  Copyright © 2020 iLovisa. All rights reserved.
//

import Foundation

// 1 = sant, 2 = falskt
struct Question {
    let text: String
    let answer: Int
    
    init(q: String, sant1_falskt2: Int) {
        text = q
        answer = sant1_falskt2
    }
}

/*
struct Quiz {
    let questions = ["Question": String(), "1=sant 2=falskt": Int()] as [String : Any]
}
*/
 
/*
let quizStavning = [
       Question(q: "57 + 12 - 10\n\n = 59", a: "Sant"),
       Question(q: "68 - 34 + 10\n\n = 44", a: "Sant"),
       Question(q: "8 + 190 -12 \n\n = 177", a: "Falskt")
       Question(q: "4  * 8 + 3\n\n = ", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
       Question(q: "", a: "")
   ]
 
 let quizEngelska = [
        Question(q: "57 + 12 - 10\n\n = 59", a: "Sant"),
        Question(q: "68 - 34 + 10\n\n = 44", a: "Sant"),
        Question(q: "8 + 190 -12 \n\n = 177", a: "Falskt")
        Question(q: "4  * 8 + 3\n\n = ", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
        Question(q: "", a: "")
    ]
*/
