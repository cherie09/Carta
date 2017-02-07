//
//  ViewController.swift
//  Carta
//
//  Created by cherie on 2017/02/03.
//  Copyright © 2017年 cherie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number : Int = 0
    var images : [String] = ["みみあて.png","あおむけ.png","おねむ.png","こうばこ.png","ひまわり.png","M.png"]
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var imageView0: UIImageView!
    
    @IBOutlet var imageView1: UIImageView!
    
    @IBOutlet var imageView2: UIImageView!
    
    @IBOutlet var imageView3: UIImageView!
    
    @IBOutlet var imageView4: UIImageView!
    
    @IBOutlet var imageView5: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView0.image = UIImage(named: images[0])
   

        imageView1.image = UIImage(named: images[1])
        
        imageView2.image = UIImage(named: images[2])
        
        imageView3.image = UIImage(named: images[3])
        
        imageView4.image = UIImage(named: images[4])
        
        imageView5.image = UIImage(named: images[5])
    }
    
    @IBAction func changeImage () {
       
        imageView0.image = UIImage(named:images[number])
        imageView1.image = UIImage(named: images[number])
        imageView2.image = UIImage(named: images[number])
        imageView3.image = UIImage(named: images[number])
        imageView4.image = UIImage(named: images[number])
        imageView5.image = UIImage(named: images[number])
        
         label.text = String (number)
        
         number = number + 1
        if number == images.count {
            number = 0
        }
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

