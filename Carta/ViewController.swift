//
//  ViewController.swift
//  Carta
//
//  Created by cherie on 2017/02/03.
//  Copyright © 2017年 cherie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var images : [String] = ["みみあて.png","あおむけ.png","おねむ.png","こうばこ.png","ひまわり.png","M.png","おくるみ.png","ひっぷ.png","おすまし.png","まふらー.png","めがね.png"]
    
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var button0: UIButton!
    
    @IBOutlet var button1: UIButton!
    
    @IBOutlet var button2: UIButton!
    
    @IBOutlet var button3: UIButton!
    
    @IBOutlet var button4: UIButton!
    
    @IBOutlet var button5: UIButton!
    
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!

    
    
    
    var questions : [String] = ["みみあて","あおむけ","おねむ","こうばこ","ひまわり","M","おくるみ","ひっぷ","おすまし","まふらー","めがね"]
    
    var answerIndex : Int = 0
    
    var nineCards : [UIButton]!
    var nineQuestions : [String] = []
    var nineImages : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nineCards = [button0,button1,button2,button3,button4,button5,button6,button7,button8]
        
        
    }
    
    

    @IBAction func buttonTapped(button: UIButton) {
        if UIImage(named :nineImages[answerIndex]) == button.backgroundImage(for: .normal) {
            
            button.setBackgroundImage(UIImage(named: "はなまる.png"), for: .normal)
            
            
            nineQuestions.remove(at: answerIndex)
            nineImages.remove(at: answerIndex)
            
            if nineQuestions.count == 0 {
                questionLabel.text = "おつかれさまー！"
            }else{
                answerIndex = Int(arc4random_uniform(UInt32(nineQuestions.count)))
                questionLabel.text = nineQuestions[answerIndex]

            }

            
    
            

            
        } else {
            print("不正解")
        }
        
        
    }
    
    
    
    @IBAction func start () {
        
        nineQuestions = []
        nineImages = []
        
        var tmpImages = images
        var tmpQuestions = questions
        for i in 0..<9 {
            let random = Int(arc4random_uniform(UInt32(tmpImages.count)))
            nineCards[i].setBackgroundImage(UIImage(named: tmpImages[random]), for: .normal)
            nineQuestions.append(tmpQuestions[random])
            nineImages.append(tmpImages[random])
            tmpQuestions.remove(at: random)
            tmpImages.remove(at: random)
           
        }
        
        answerIndex = Int(arc4random_uniform(UInt32(nineQuestions.count)))
        questionLabel.text = nineQuestions[answerIndex]
        

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

