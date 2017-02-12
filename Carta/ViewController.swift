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
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var button0: UIButton!
    
    @IBOutlet var button1: UIButton!
    
    @IBOutlet var button2: UIButton!
    
    @IBOutlet var button3: UIButton!
    
    @IBOutlet var button4: UIButton!
    
    @IBOutlet var button5: UIButton!
    
    
    
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
        print("ボタン0が押されたよ")
    }
    @IBAction func button1Tapped() {
        print("ボタン0が押されたよ")
    }
    @IBAction func button2Tapped() {
        print("ボタン0が押されたよ")
    }
    @IBAction func button3Tapped() {
        print("ボタン0が押されたよ")
    }
    @IBAction func button4Tapped() {
        print("ボタン0が押されたよ")
    }
    @IBAction func button5Tapped() {
        print("ボタン0が押されたよ")
    }
    
    
    
    @IBAction func changeImage () {
        
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

