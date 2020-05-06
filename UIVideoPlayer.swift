//
//  UIVideoPlayer.swift
//  Tayyare
//
//  Created by Cumali Han Ünlü on 7.05.2020.
//  Copyright © 2020 Cumali Han Ünlü. All rights reserved.
//


import SwiftUI
import AVKit

class UIVideoPlayer: UIView {
    var playerLayer = AVPlayerLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
          guard let url = URL(string: "https://github.com/cumalihan/Tayyare/blob/master/Base.lproj/airplane.mp4?raw=true") else { return }
        let player = AVPlayer(url: url)
        player.isMuted = true
        player.play()
        
        playerLayer.player = player
        playerLayer.videoGravity = AVLayerVideoGravity(rawValue: AVLayerVideoGravity.resizeAspectFill.rawValue)
        layer.addSublayer(playerLayer)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


struct PlayerView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIVideoPlayer {
        return UIVideoPlayer()
    }

    func updateUIView(_ uiView: UIVideoPlayer, context: Context) {
        
    }
}
