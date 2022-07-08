//
//  ViewController.swift
//  0625 button trigger event
//
//  Created by mac on 2022/6/25.
//  Copyright © 2022 mac. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var sentence1 = "Mary has a little pussy "
    
    @IBOutlet weak var KeyInTextField: UITextField!
    
    @IBOutlet weak var SpeedForKeyToSpeak: UISlider!
    
    @IBOutlet weak var SwitchSliderRate: UISlider!
    

    @IBOutlet weak var SwStatus: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func speak1(_ sender: Any) {
        print("cum cum cum")
        let utterance = AVSpeechUtterance(string: "mei修感某")//要說什麼
        let synthsizer = AVSpeechSynthesizer()//建立合成器
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        utterance.rate=0.4
        utterance.pitchMultiplier=0.8
        utterance.volume=1
        synthsizer.speak(utterance)
    }

    
    @IBAction func speak2(_ sender: Any) {
        print("cum cum cum")
        let utterance = AVSpeechUtterance(string: "May Show Gang 抹")//要說什麼
        let synthsizer = AVSpeechSynthesizer()//建立合成器
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        utterance.rate=0.4
        utterance.pitchMultiplier=0.8
        utterance.volume=2
        synthsizer.speak(utterance)
    }
    @IBAction func keyInThenSpeak(_ sender: Any) {
        // key in part
        
        
        //speak part
        let utterance = AVSpeechUtterance(string: "\(KeyInTextField.text!)")//要說什麼
        let synthsizer = AVSpeechSynthesizer()//建立合成器
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        utterance.rate=SpeedForKeyToSpeak.value
        utterance.pitchMultiplier=0.8
        utterance.volume=2
        synthsizer.speak(utterance)
        
        
        
    }
    //以上是初始練習 click to speak & key to speak
    
    
    // Switch 2 speak
    @IBAction func Switchtospeakimage(_ sender: Any) {
        
        let utterance = AVSpeechUtterance(string: sentence1)//要說什麼
        let synthsizer = AVSpeechSynthesizer()//建立合成器
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        utterance.rate=SwitchSliderRate.value
        utterance.pitchMultiplier=0.8
        utterance.volume=2
        synthsizer.speak(utterance)
        
    }
    
    // switch to different content
    
    
    
    
    
    @IBAction func Sw1(_ sender: Any) {
        
        if SwStatus.isOn == true{
            sentence1 = "I have a big dick"
        } else {
            sentence1 = "Mary has a little pusy"
        }
        
    }
}

