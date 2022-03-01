//
//  AudioPlayer.swift
//  RestartApp
//
//  Created by Rhullian Damião on 01/03/22.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(name: String, type: String = "mp3") {
    if let path = Bundle.main.path(forResource: name, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("ERROR: Could not play sound file")
        }
    }
}
