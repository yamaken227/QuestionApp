//
//  ViewController.swift
//  QuestionApp
//
//  Created by Kenta Yamada on 2021/04/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var maxScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func answer(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1 {
            
            //丸ボタンが押された時
            
            //ユーザーが押したんボタンが丸ボタンだった
            
            //丸ボタンの音声を流す
            
        }else if (sender as AnyObject).tag == 2{
            
            //✖︎ボタンが押された時
            
            //ユーザーが押したんボタンが✖︎ボタンだった
            
            //✖︎ボタンの音声を流す
            
        }
        
    }
    
}

