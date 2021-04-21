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
    
    var correctCount = 0
    var wrongCount = 0
    var maxScore = 0
    var questionNumber = 0
    
    let imagesList = ImagesList()
    
    //IBActionで検知した瀬藤がどちらなのかを取得する変数
    var pickedAnswer = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        correctCount = 0
        wrongCount = 0
        questionNumber = 0
        
        imageView.image = UIImage(named: imagesList.list[0].imageText)
        
        if UserDefaults.standard.object(forKey: "beforeCount") != nil {
            
            maxScore = UserDefaults.standard.object(forKey: "beforeCount") as! Int
            
        }
        
        maxScoreLabel.text = String(maxScore)
    }

    @IBAction func answer(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1 {
            
            pickedAnswer = true
            
            //丸ボタンが押された時
            
            //ユーザーが押したんボタンが丸ボタンだった
            
            //丸ボタンの音声を流す
            
        }else if (sender as AnyObject).tag == 2{
            
            pickedAnswer = false
            //✖︎ボタンが押された時
            
            //ユーザーが押したんボタンが✖︎ボタンだった
            
            //✖︎ボタンの音声を流す
            
        }
        
        //チェック　回答があっているか(pickedAnswerとImagesListのcorrectorNotの値が一致しているかどうか)
        check()
        nextQuestions()
        
    }
    
    func check() {
        
        let correctAnswer = imagesList.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            print("正解")
            correctCount = correctCount + 1
        } else {
            
            print("間違い")
            wrongCount = wrongCount + 1
            
        }
    }
    
    func nextQuestions() {
        
        if questionNumber <= 9 {
            
            questionNumber = questionNumber + 1
            imageView.image = UIImage(named:imagesList.list[questionNumber].imageText)
            
        }else {
            
            print("問題終了")
            //画面遷移
            
            performSegue(withIdentifier: "next", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "next" {
            
            let nextVC = segue.destination as! NextViewController
            
            nextVC.correctedCount = correctCount
            nextVC.wrongCount = wrongCount
        }
    }
    
}

