//
//  GameViewController.swift
//  oxgame
//
//  Created by higegiraffe on 2015/04/11.
//  Copyright (c) 2015年 yukinko. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController, UIGestureRecognizerDelegate {

    var scene: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = view as! SKView
        skView.multipleTouchEnabled = false
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        skView.presentScene(scene)
    
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    @IBAction func didTap(sender: UITapGestureRecognizer) {
        let location = sender.locationInView(view)
        print("tapped at \(location.x), \(location.y)")
        scene.mark(location)
    }
    
}
