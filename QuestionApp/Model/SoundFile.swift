//
//  SoundFile.swift
//  QuestionApp
//
//  Created by Kenta Yamada on 2021/04/26.
//

import Foundation
import AVFoundation

class SoundFile {
    
    var player:AVAudioPlayer?
    
    func playSound(fileName:String,extensionName:String) {
        
        //再生する
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: extensionName)
        
        do {
            
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
            
        } catch  {
            
            print("エラーです！")
            
        }
    }
}
