//
//  ViewController.swift
//  BattleScoreCount
//
//  Created by mac on 2022/6/25.
//  Copyright © 2022 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Player1_Score: UILabel!
    @IBOutlet weak var Player2_Score: UILabel!
    @IBOutlet weak var Player1ServeStatus: UILabel!
    @IBOutlet weak var Player2ServeStatus: UILabel!
    @IBOutlet weak var P1SetCount: UILabel!
    @IBOutlet weak var P2SetCount: UILabel!
    
    var P1_Score = 0
    var P2_Score = 0
    var addTimesCount = 0
    var P1_setCount = 0
    var P2_setCount = 0
    var changeCount = 0

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let view = UIView()
        var path = UIBezierPath()
        var point = CGPoint(x: 0, y: 400)
        path.move(to: point)
        path.addLine(to: CGPoint(x: 430, y: 400))
        let Line = CAShapeLayer()
        Line.path=path.cgPath
        Line.strokeColor=CGColor(srgbRed: 1, green: 1, blue: 1, alpha: 0.5)
        view.layer.addSublayer(Line)
    }
    

    func reset(){
        //reset
        P2_Score=0
        P1_Score=0
        Player1_Score.text = String(P1_Score)
        Player2_Score.text = String(P2_Score)
        addTimesCount=0
    }
    
    
    
    @IBAction func ClearAll(_ sender: Any) {
        reset()
        P1_setCount=0
        P2_setCount=0
        P1SetCount.text = String(P1_setCount)
        P2SetCount.text = String(P2_setCount)
    }
    
    @IBAction func change(_ sender: Any) {
        
        if changeCount%2==0{
            Player1_Score.text = String(P2_Score)
            Player2_Score.text = String(P1_Score)
            // still bug here
            
            P1SetCount.text = String(P2_setCount)
            P2SetCount.text = String(P1_setCount)
            
        }else{
            Player1_Score.text = String(P1_Score)
            Player2_Score.text = String(P2_Score)

            P1SetCount.text = String(P1_setCount)
            P2SetCount.text = String(P2_setCount)
        }
        
        changeCount+=1
    }
    
    
    @IBAction func Player1_addScore(_ sender: Any) {
        // Score reach 11 then Set +1
        if P1_Score < 11 && P2_Score < 11  {
                P1_Score+=1
                addTimesCount+=1
                Player1_Score.text = String(P1_Score)

        }
        if P1_Score >= 11{
            P1_setCount += 1
            P1SetCount.text = String(P1_setCount)
            //reset
            reset()
            }
        if P2_Score >= 11{
            P2_setCount += 1
            P2SetCount.text = String(P2_setCount)
            //reset
            reset()


            
            
            }
        
        //serve change
        if addTimesCount/2%2==0{
            Player1ServeStatus.isEnabled=false
            Player2ServeStatus.isEnabled=true

        }else{
            Player1ServeStatus.isEnabled=true
            Player2ServeStatus.isEnabled=false
        }
    }
    
    
    
    
    
    @IBAction func Player2_addScore(_ sender: Any) {
        
        
        // Score reach 11 then Set +1
        if P1_Score < 11 && P2_Score < 11  {
                P2_Score+=1
                addTimesCount+=1
                Player2_Score.text = String(P2_Score)

        }
        if P1_Score >= 11{
            P1_setCount += 1
            P1SetCount.text = String(P1_setCount)
            //reset
            reset()
            }
        if P2_Score >= 11{
            P2_setCount += 1
            P2SetCount.text = String(P2_setCount)
            //reset
            reset()
            }
            
        
            
            
        
        //serve change
        if addTimesCount/2%2==0 {
            Player1ServeStatus.isEnabled=false
            Player2ServeStatus.isEnabled=true

        }else{
            Player1ServeStatus.isEnabled=true
            Player2ServeStatus.isEnabled=false
    }
    } //end of @IBAction func Player2_addScore
    
}


