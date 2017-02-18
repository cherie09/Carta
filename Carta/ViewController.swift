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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button0.setBackgroundImage(UIImage(named: images[0]), for: .normal)
        
        
        button1.setBackgroundImage(UIImage(named: images[1]), for: .normal)
        
        button2.setBackgroundImage(UIImage(named: images[2]), for: .normal)
        button3.setBackgroundImage(UIImage(named: images[3]), for: .normal)
        button4.setBackgroundImage(UIImage(named: images[4]), for: .normal)
        
        button5.setBackgroundImage(UIImage(named: images[5]), for: .normal)
    }
    
    @IBAction func button0Tapped() {
        
        let image = UIImage(named: images[Int(arc4random_uniform(UInt32(images.count)))])
        button0.setBackgroundImage(image, for: .normal)
    }
    @IBAction func button1Tapped() {
        let image = UIImage(named: images[Int (arc4random_uniform(UInt32(images.count)))] )
        button1.setBackgroundImage(image, for: .normal)
        
    }
    
    @IBAction func button2Tapped() {
        let image = UIImage(named: images[Int(arc4random_uniform(UInt32(images.count)))])
        button2.setBackgroundImage(image, for: .normal)
    
    }
    @IBAction func button3Tapped() {
        let image = UIImage(named: images[Int(arc4random_uniform(UInt32(images.count)))])
        button3.setBackgroundImage(image, for: .normal)
    }
    
    @IBAction func button4Tapped() {
        let image = UIImage(named: images[Int(arc4random_uniform(UInt32(images.count)))])
        button4.setBackgroundImage(image, for: .normal)
    }
    @IBAction func button5Tapped() {
        let image = UIImage(named: images[Int(arc4random_uniform(UInt32(images.count)))])
        button5.setBackgroundImage(image, for: .normal)
    }
    
    
    
    @IBAction func changeQuestion () {
        
        questionLabel.text = questions [Int(arc4random_uniform(UInt32(questions.count)))]
        
        button0.setBackgroundImage(UIImage(named: images[Int(arc4random_uniform(UInt32(images.count)))]), for: .normal)
        button1.setBackgroundImage(UIImage(named: images[Int(arc4random_uniform(UInt32(images.count)))]), for: .normal)
        button2.setBackgroundImage(UIImage(named: images[Int(arc4random_uniform(UInt32(images.count)))]), for: .normal)
        button3.setBackgroundImage(UIImage(named: images[Int(arc4random_uniform(UInt32(images.count)))]), for: .normal)
        
        button4.setBackgroundImage(UIImage(named: images[Int(arc4random_uniform(UInt32(images.count)))]), for: .normal)
        
        button5.setBackgroundImage(UIImage(named: images[Int(arc4random_uniform(UInt32(images.count)))]), for: .normal)
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

