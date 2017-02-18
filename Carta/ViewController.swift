//
//  ViewController.swift
//  Carta
//
//  Created by cherie on 2017/02/03.
//  Copyright © 2017年 cherie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var images : [String] = ["みみあて.png","あおむけ.png","おねむ.png","こうばこ.png","ひまわり.png","M.png"]
    
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var button0: UIButton!
    
    @IBOutlet var button1: UIButton!
    
    @IBOutlet var button2: UIButton!
    
    @IBOutlet var button3: UIButton!
    
    @IBOutlet var button4: UIButton!
    
    @IBOutlet var button5: UIButton!
    
    var questions : [String] = ["みみあて","あおむけ","おねむ","こうばこ","ひまわり","M"]
    
    var answerIndex : Int = 0
    
    var sixCards : [UIButton]!
    var sixQuestions : [String] = []
    var sixImages : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sixCards = [button0,button1,button2,button3,button4,button5]
        
        
    }
    
    

    @IBAction func buttonTapped(button: UIButton) {
        if UIImage(named :sixImages[answerIndex]) == button.backgroundImage(for: .normal) {
            
            button.setBackgroundImage(UIImage(named: "はなまる.png"), for: .normal)
            
            
            sixQuestions.remove(at: answerIndex)
            sixImages.remove(at: answerIndex)
            
            if sixQuestions.count == 0 {
                questionLabel.text = "おつかれさまー！"
            }else{
                answerIndex = Int(arc4random_uniform(UInt32(sixQuestions.count)))
                questionLabel.text = sixQuestions[answerIndex]

            }

            
            
            
            
            

            
        } else {
            print("不正解")
        }
        
        
    }
    
    
    
    @IBAction func start () {
        
        sixQuestions = []
        sixImages = []
        
        var tmpImages = images
        var tmpQuestions = questions
        for i in 0..<6 {
            let random = Int(arc4random_uniform(UInt32(tmpImages.count)))
            sixCards[i].setBackgroundImage(UIImage(named: tmpImages[random]), for: .normal)
            sixQuestions.append(tmpQuestions[random])
            sixImages.append(tmpImages[random])
            tmpQuestions.remove(at: random)
            tmpImages.remove(at: random)
           
        }
        
        answerIndex = Int(arc4random_uniform(UInt32(sixQuestions.count)))
        questionLabel.text = sixQuestions[answerIndex]
        

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

