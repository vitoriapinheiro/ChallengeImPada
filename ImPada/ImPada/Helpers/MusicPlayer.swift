//
//  MusicPlayer.swift
//  ImPada
//
//  Created by vivi on 22/03/23.
//

import Foundation
import AVFoundation
import MediaPlayer
import SwiftUI

class MusicPlayer: ObservableObject {
    static let shared = MusicPlayer()
    var audioPlayer: AVAudioPlayer!
    private var songPlaying: String = ""
    
    @Published private var playing = false
    @State var errorOccurred = false
    
    
    func startBackgroundMusic(backgroundMusicFileName: String) {
        if let bundle = Bundle.main.path(forResource: backgroundMusicFileName, ofType: "mp3") {
            let backgroundMusic = NSURL(fileURLWithPath: bundle)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
                guard let audioPlayer = audioPlayer else {
                    errorOccurred = true
                    return
                }
                audioPlayer.numberOfLoops = 0
                audioPlayer.prepareToPlay()
                audioPlayer.play()
                songPlaying = backgroundMusicFileName
                playing = true
            } catch {
                errorOccurred = true
                print(error)
                playing = false
            }
        }
    }
    
    func playPause() {
        if playing {
            audioPlayer.pause()
        } else {
            audioPlayer.play()
        }
        playing.toggle()
    }
    
    func stopBackgroundMusic() {
        guard let audioPlayer = audioPlayer else { return }
        playing = false
        audioPlayer.stop()
    }
    
    func setVolume(_ volume: Float) -> Void {
        let volumeView = MPVolumeView()
        let slider = volumeView.subviews.first(where: { $0 is UISlider }) as? UISlider
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.01) {
            slider?.value = volume
        }
        
        if audioPlayer != nil {
            audioPlayer.volume = volume
        }
    }
    
}
