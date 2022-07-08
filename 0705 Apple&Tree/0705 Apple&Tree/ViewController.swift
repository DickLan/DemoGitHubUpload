//
//  ViewController.swift
//  0705 Apple&Tree
//
//  Created by mac on 2022/7/4.
//  Copyright © 2022 mac. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    @IBOutlet weak var CombineTreeImageView: UIImageView!
    var comCount = 5
    
    @IBOutlet weak var statusDisplay: UILabel!
    @IBOutlet weak var GGButon: UIButton!
    
    @IBOutlet weak var answerDisplayLabel: UILabel!
    
    @IBOutlet weak var tempPosDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        GGButon.setTitle("BB", for: .normal)
        if GGButon.currentTitle == "BB"{
            GGButon.setTitle("AA", for: .normal)
        }
        
    }
    
        var finalAnswer = "APPLEP"
        var guessAnswer = "____"
        var letterIndex = 65 //65==A
        var currentASCIINumber = 0
            


    
    @IBAction func ChooseAnswer(_ sender: UIButton) {
        // var&let Area !!!!
        
        // make Button charachter to ASCII code
        var letterS =  String(Character(UnicodeScalar(letterIndex)!))
        
        // save button title to cCS
        let currentCharacterStr = "\(String(sender.currentTitle!))"
        
        // var Character who show 2 or more than 2 times
        var chaCount = 0
        var chaCount2 = 0
        for i in finalAnswer{
            if String(i) == currentCharacterStr {
                chaCount += 1
            }
        }
        
        // logical Area !!!!
        if finalAnswer.range(of: currentCharacterStr) != nil{
            
            // get current Character index
            
            let needle: Character = Character(currentCharacterStr)
            
            for _ in 1...chaCount{
                if let idx = finalAnswer.index(of: needle){
                    let pos = finalAnswer.distance(from: finalAnswer.startIndex, to: idx)
                    tempPosDisplay.text = String(chaCount)
                    
                    // replace guessAnswer Character with current Character
                    if pos > 0 {
                       
                             guessAnswer.remove(at: guessAnswer.index(before: guessAnswer.index(guessAnswer.startIndex, offsetBy: pos+1)))
                             guessAnswer.insert(needle, at: guessAnswer.index(guessAnswer.startIndex, offsetBy: pos))
                            chaCount2 += 1

                            
                             // remove final answer CHA and insert Nonsense
                             finalAnswer.remove(at: finalAnswer.index(before: finalAnswer.index(finalAnswer.startIndex, offsetBy: pos+1)))
                             finalAnswer.insert("_", at: finalAnswer.index(finalAnswer.startIndex, offsetBy: pos))
                             
                             // change display label text
                             answerDisplayLabel.text = String(guessAnswer)
                            tempPosDisplay.text = String(chaCount2)
                        
                    }else{
                        guessAnswer.remove(at: guessAnswer.index(before: guessAnswer.index(guessAnswer.startIndex, offsetBy: 1)))
                        guessAnswer.insert(needle, at: guessAnswer.index(guessAnswer.startIndex, offsetBy: 0))
                        answerDisplayLabel.text = guessAnswer
                    }
            }
            }
            
            
    
        }else{
            CombineTreeImageView.image = UIImage(named: "Com0\(comCount-1)")
            comCount -= 1
            if comCount == 0 {
                statusDisplay.text = "You Lose!"
            }
        }
        
        // disable current button once it's clicked
        sender.alpha = 0.3
        //sender.isUserInteractionEnabled = false

    }
    
    
    
}

