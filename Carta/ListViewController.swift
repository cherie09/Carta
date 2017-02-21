//
//  ListViewController.swift
//  Carta
//
//  Created by cherie on 2017/02/21.
//  Copyright © 2017年 cherie. All rights reserved.
//

import UIKit

class ListViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet var collectionView: UICollectionView!
    
    var questions : [String] = ["ページ自体の題名のタグ","コンテンツのヘッダー情報をまとめるタグ","文章内の改行タグ","見出しのタグ1","写真や画像のタグ","M","おくるみ","ひっぷ","おすまし","まふらー","めがね"]
    
    var answers : [String] = ["title","header","br","h1","img","M.png","おくるみ.png","ひっぷ.png","おすまし.png","まふらー.png","めがね.png"]
    
    @IBAction func back (){
        //戻る
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cell = collectionView.cellForItem(at: indexPath)
        let label = cell?.viewWithTag(1) as! UILabel
        
        if label.text == answers[indexPath.row] {
            
            UIView.animate(withDuration: 0.5, delay: 0, options: .allowUserInteraction, animations: {
                
                UIView.transition(with: (cell?.contentView)!, duration: 2, options: .transitionFlipFromRight, animations: {
                    
                    label.text = self.questions[indexPath.row]
                }, completion: nil)
                
            }, completion: nil)
            
            
        }else if label.text == questions[indexPath.row]{
            UIView.animate(withDuration: 0.5, delay: 0, options: .allowUserInteraction, animations: {
                
                UIView.transition(with: (cell?.contentView)!, duration: 2, options: .transitionFlipFromLeft, animations: {
                    
                    label.text = self.answers[indexPath.row]
                }, completion: nil)
                
            }, completion: nil)
            

            
        }
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return questions.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let label = cell.viewWithTag(1) as! UILabel
        label.text = questions[indexPath.row]
        
        
        return cell
        
    }
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
