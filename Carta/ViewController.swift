//
//  ViewController.swift
//  Carta
//
//  Created by cherie on 2017/02/03.
//  Copyright © 2017年 cherie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var answers : [String] = ["title","header","br","h1","img","M.png","おくるみ.png","ひっぷ.png","おすまし.png","まふらー.png","めがね.png"]
    
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
    
    @IBAction func back(){
    dismiss(animated: true, completion: nil)
    }
    
    
    var questions : [String] = ["ページ自体の題名のタグ","コンテンツのヘッダー情報をまとめるタグ","文章内の改行タグ","見出しのタグ1","写真や画像のタグ","M","おくるみ","ひっぷ","おすまし","まふらー","めがね"]
    
    var answerIndex : Int = 0
    
    var nineCards : [UIButton]!
    var nineQuestions : [String] = []
    var nineanswers : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nineCards = [button0,button1,button2,button3,button4,button5,button6,button7,button8]
        
        
    }
    
    
    
    @IBAction func buttonTapped(button: UIButton) {
        if nineanswers.count != 0{
            if nineanswers[answerIndex] == button.title(for: .normal) {
                
                button.setBackgroundImage(UIImage(named: "はなまる.png"), for: .normal)
                
                
                
                nineQuestions.remove(at: answerIndex)
                nineanswers.remove(at: answerIndex)
                
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
        
    }
    
    
    
    @IBAction func start () {
        
        nineQuestions = []
        nineanswers = []
        
        var tmpAnswers = answers
        var tmpQuestions = questions
        for i in 0..<9 {
            let random = Int(arc4random_uniform(UInt32(tmpAnswers.count)))
            nineCards[i].setTitle(tmpAnswers[random], for: .normal)
            nineCards[i].setBackgroundImage(nil, for: .normal)
            nineQuestions.append(tmpQuestions[random])
            nineanswers.append(tmpAnswers[random])
            tmpQuestions.remove(at: random)
            tmpAnswers.remove(at: random)
            
        }
        
        answerIndex = Int(arc4random_uniform(UInt32(nineQuestions.count)))
        questionLabel.text = nineQuestions[answerIndex]
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

