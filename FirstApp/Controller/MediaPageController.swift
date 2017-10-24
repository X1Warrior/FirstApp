//
//  MediaPageController.swift
//  FirstApp
//
//  Created by Stout, Zachary on 10/24/17.
//  Copyright © 2017 Stout, Zachary. All rights reserved.
//

    import UIKit
    import AVFoundation
    
    public class MediaPageController : UIViewController
    {
        @IBOutlet weak var imageFrame :UIImageView!
        @IBOutlet weak var soundButton : UIButton!
        @IBOutlet weak var soundSlider: UISlider!
        
        private lazy var color : ColorTools = ColorTools()
        private var imageCounter : Int = 0
        private var soundPlayer : AVAudioPlayer?
        
        public override func viewDidLoad() -> Void
        {
            view.backgroundColor = color.createRandomColor()
            loadAudioFile()
        }
        
        public override func didReceiveMemoryWarning() -> Void
        {
            super.didReceiveMemoryWarning()
        }

        private func changeImage() -> Void
        {
            if (imageCounter > 5)
            {
                imageCounter = 0
                
            }
            
            if (imageCounter == 0)
            {
                
            }
        }
        
        @IBAction func soundButtonClick() -> Void
        {
        playMusicFile()
        view.backgroundColor = color.createRandomColor()
        }

       @IBAction func sliderMethod() ->Void
       {
        let seekTime = Double (soundSlider.value)
        soundPlayer?.currentTime = seekTime
        }
        
        
        private func playMusicFile() -> Void
        {
            if let isPlaying = soundPlayer?.isPlaying
            {
                if(isPlaying)
                {
                    soundPlayer?.pause()
                }
                else
                {
                soundPlayer?.play()
                }
            }
//less stable version
//  if ((soundPlayer?.isPlaying)!)
//            {
//                soundPlayer?.pause()
//            }
//            else
//            {
//                soundPlayer?.play()
//            }
        }
        
private func loadAudioFile() -> Void
{
    if let soundURL = NSDATAAsset(name: "WickedGame_clubMix")
    {
       do
       {
        try! AVAudioSession.sharedInstance().etCategory(AVAudioSessionCategoryPlayback)
        try! AVAudioSession.sharedInstance().setActive(true)
        
        try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: AVFileType.mp3.rawValue)
        soundSlider.maximumValue = Float ((soundPlayer?.duration)!)
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: (#selector(self.updateSlider)), userInfo: nil, repeats: true)
    }
       catch
       {
        print("Audio file LoadError")
        }
    }
}
        @objc private func updateSlider() -> Void
        {
            soundSlider.value = Float ((soundPlayer?.currentTime)!)
        }
}

