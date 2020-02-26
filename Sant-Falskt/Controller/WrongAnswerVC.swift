//
//  WrongAnswerVC.swift
//  Sant-Falskt
//
//  Created by Lovisa Jonsson on 2020-02-25.
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
