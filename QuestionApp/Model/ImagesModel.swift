//
//  ImagesModel.swift
//  QuestionApp
//
//  Created by Kenta Yamada on 2021/04/09.
//

import Foundation

class ImagesModel {
    
    //画像名を取得して、その画僧が人間かそうでないかをフラグによって判定するための機能
    
    let imageText:String
    let answer:Bool
    
    init(imageName:String,correctOrNot:Bool) {
        imageText = imageName
        
        answer = correctOrNot
    }
}
