//
//  ViewController.swift
//  ZigZag
//
//  Created by Student on 4/25/16.
//  Copyright © 2016 SHP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // storyboard elements and connections
    @IBOutlet var gameView: UIView!
    @IBOutlet var ball: UIImageView!
    @IBOutlet var gameOver: UIImageView!
    @IBOutlet var retryButton: UIButton!
    @IBOutlet var scoreBoard: UIImageView!
    @IBOutlet var logo: UIImageView!
    @IBOutlet var playButton: UIButton!
    @IBOutlet var pillarTop1: UIImageView!
    @IBOutlet var pillarTop2: UIImageView!
    @IBOutlet var pillarTop3: UIImageView!
    @IBOutlet var pillarTop4: UIImageView!
    @IBOutlet var pillarTop5: UIImageView!
    @IBOutlet var pillarTop6: UIImageView!
    @IBOutlet var pillar1: UIImageView!
    @IBOutlet var pillar2: UIImageView!
    @IBOutlet var pillar3: UIImageView!
    @IBOutlet var pillar4: UIImageView!
    @IBOutlet var pillar5: UIImageView!
    @IBOutlet var pillar6: UIImageView!
    @IBOutlet var pillar7: UIImageView!
    @IBOutlet var pillar8: UIImageView!
    @IBOutlet var pillar9: UIImageView!
    @IBOutlet var pillar10: UIImageView!
    @IBOutlet var pillar11: UIImageView!
    @IBOutlet var pillar12: UIImageView!
    @IBOutlet var pillar13: UIImageView!
    @IBOutlet var pillar14: UIImageView!
    @IBOutlet var pillar15: UIImageView!
    @IBOutlet var pillar16: UIImageView!
    @IBOutlet var pillar17: UIImageView!
    @IBOutlet var pillar18: UIImageView!
    @IBOutlet var pillar19: UIImageView!
    @IBOutlet var pillar20: UIImageView!
    @IBOutlet var pillar21: UIImageView!
    @IBOutlet var pillar22: UIImageView!
    @IBOutlet var pillar23: UIImageView!
    @IBOutlet var pillar24: UIImageView!
    @IBOutlet var pillar25: UIImageView!
    @IBOutlet var pillar26: UIImageView!
    @IBOutlet var highScoreLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var scoreInCornerLabel: UILabel!
    var score: Int = 0
    var highScore: Int = 0
    let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
    var timer = NSTimer()
    var tapsvalid: Bool?
    var ballRight: Bool?
    var ballChange: Bool?
    var ballCenter: CGPoint?
    var pillar1Center: CGPoint?
    var pillar2Center: CGPoint?
    var pillar3Center: CGPoint?
    var pillar4Center: CGPoint?
    var pillar5Center: CGPoint?
    var pillar6Center: CGPoint?
    var pillar7Center: CGPoint?
    var pillar8Center: CGPoint?
    var pillar9Center: CGPoint?
    var pillar10Center: CGPoint?
    var pillar11Center: CGPoint?
    var pillar12Center: CGPoint?
    var pillar13Center: CGPoint?
    var pillar14Center: CGPoint?
    var pillar15Center: CGPoint?
    var pillar16Center: CGPoint?
    var pillar17Center: CGPoint?
    var pillar18Center: CGPoint?
    var pillar19Center: CGPoint?
    var pillar20Center: CGPoint?
    var pillar21Center: CGPoint?
    var pillar22Center: CGPoint?
    var pillar23Center: CGPoint?
    var pillar24Center: CGPoint?
    var pillar25Center: CGPoint?
    var pillar26Center: CGPoint?
    var pillarTop1Center: CGPoint?
    var pillarTop2Center: CGPoint?
    var pillarTop3Center: CGPoint?
    var pillarTop4Center: CGPoint?
    var pillarTop5Center: CGPoint?
    var pillarTop6Center: CGPoint?
    
    
    @IBAction func retry(sender: AnyObject) {  // this allowsuser to restart the game by pressing the retry button
        self.viewDidLoad()
        self.play(playButton)
        score = 0
    }
    
    
    @IBAction func play(sender: AnyObject) {  // this allows the player to start the game by pressing the play button
        
        tapsvalid = true
        ballChange = true
        
        self.gameOver.hidden = true
        
        self.retryButton.hidden = true
        
        self.ball.hidden = false
        
        self.logo.hidden = true
        
        self.playButton.hidden = true
        
        self.scoreBoard.hidden = true
        scoreLabel.hidden = true
        scoreInCornerLabel.hidden = false
        highScoreLabel.hidden = true
        
        
        self.ball.center.x = 178.0
        self.ball.center.y = 390.0
        self.pillar1.center = CGPoint(x: 175.0, y: 436.0)
        self.pillar2.center = CGPoint(x:214.0, y: 407.0)
        self.pillarTop2.center = CGPointMake(pillar1.center.x, pillar1.center.y - 35)
        self.pillarTop3.center = CGPointMake(pillar2.center.x, pillar2.center.y - 35)
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.045, target: self, selector: Selector("movement"), userInfo: nil, repeats: true)
        
        self.pillar3.center = pillarPlacement(pillar2.center.x, y: pillar2.center.y)
        self.pillar4.center = pillarPlacement(pillar3.center.x, y: pillar3.center.y)
        self.pillar5.center = pillarPlacement(pillar4.center.x, y: pillar4.center.y)
        self.pillar6.center = pillarPlacement(pillar5.center.x, y: pillar5.center.y)
        self.pillar7.center = pillarPlacement(pillar6.center.x, y: pillar6.center.y)
        self.pillar8.center = pillarPlacement(pillar7.center.x, y: pillar7.center.y)
        self.pillar9.center = pillarPlacement(pillar8.center.x, y: pillar8.center.y)
        self.pillar10.center = pillarPlacement(pillar9.center.x, y: pillar9.center.y)
        self.pillar11.center = pillarPlacement(pillar10.center.x, y: pillar10.center.y)
        self.pillar12.center = pillarPlacement(pillar11.center.x, y: pillar11.center.y)
        self.pillar13.center = pillarPlacement(pillar12.center.x, y: pillar12.center.y)
        self.pillar14.center = pillarPlacement(pillar13.center.x, y: pillar13.center.y)
        self.pillar15.center = pillarPlacement(pillar14.center.x, y: pillar14.center.y)
        self.pillar16.center = pillarPlacement(pillar15.center.x, y: pillar15.center.y)
        self.pillar17.center = pillarPlacement(pillar16.center.x, y: pillar16.center.y)
        self.pillar18.center = pillarPlacement(pillar17.center.x, y: pillar17.center.y)
        self.pillar19.center = pillarPlacement(pillar18.center.x, y: pillar18.center.y)
        self.pillar20.center = pillarPlacement(pillar19.center.x, y: pillar19.center.y)
        self.pillar21.center = pillarPlacement(pillar20.center.x, y: pillar20.center.y)
        self.pillar22.center = pillarPlacement(pillar21.center.x, y: pillar21.center.y)
        self.pillar23.center = pillarPlacement(pillar22.center.x, y: pillar22.center.y)
        self.pillar24.center = pillarPlacement(pillar23.center.x, y: pillar23.center.y)
        self.pillar25.center = pillarPlacement(pillar24.center.x, y: pillar24.center.y)
        self.pillar26.center = pillarPlacement(pillar25.center.x, y: pillar25.center.y)
        
        
        self.pillar1.hidden = false
        self.pillar2.hidden = false
        self.pillar3.hidden = false
        self.pillar4.hidden = false
        self.pillar5.hidden = false
        self.pillar6.hidden = false
        self.pillar7.hidden = false
        self.pillar8.hidden = false
        self.pillar9.hidden = false
        self.pillar10.hidden = false
        self.pillar11.hidden = false
        self.pillar12.hidden = false
        self.pillar13.hidden = false
        self.pillar14.hidden = false
        self.pillar15.hidden = false
        self.pillar16.hidden = false
        self.pillar17.hidden = false
        self.pillar18.hidden = false
        self.pillar19.hidden = false
        self.pillar20.hidden = false
        self.pillar21.hidden = false
        self.pillar22.hidden = false
        self.pillar23.hidden = false
        self.pillar24.hidden = false
        self.pillar25.hidden = false
        self.pillar26.hidden = false
        
        
        self.pillarTop1.hidden = false
        self.pillarTop2.hidden = false
        self.pillarTop3.hidden = false
    }
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // make appropriate image views and button hidden / not hidden
        
        highScore = defaults.integerForKey("Highscore")
        self.gameOver.hidden = true
        
        self.retryButton.hidden = true
        
        self.ball.hidden = true
        
        self.logo.hidden = false
        
         self.playButton.hidden = false
        
        self.scoreBoard.hidden = true
        self.scoreLabel.hidden = true
        self.highScoreLabel.hidden = true
        self.scoreInCornerLabel.hidden = true
       
        self.pillar1.hidden = true
        self.pillar2.hidden = true
        self.pillar3.hidden = true
        self.pillar4.hidden = true
        self.pillar5.hidden = true
        self.pillar6.hidden = true
        self.pillar7.hidden = true
        self.pillar8.hidden = true
        self.pillar9.hidden = true
        self.pillar10.hidden = true
        self.pillar11.hidden = true
        self.pillar12.hidden = true
        self.pillar13.hidden = true
        self.pillar14.hidden = true
        self.pillar15.hidden = true
        self.pillar16.hidden = true
        self.pillar17.hidden = true
        self.pillar18.hidden = true
        self.pillar19.hidden = true
        self.pillar20.hidden = true
        self.pillar21.hidden = true
        self.pillar22.hidden = true
        self.pillar23.hidden = true
        self.pillar24.hidden = true
        self.pillar25.hidden = true
        self.pillar26.hidden = true
        
        self.pillarTop1.hidden = true
        self.pillarTop2.hidden = true
        self.pillarTop3.hidden = true

            }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if tapsvalid == true {
            score++                 // this adds up the score
            if ballRight == true {
                ballChange = false
                } else {
                ballChange = true
                }
            }
        }


    
    func movement() {
        self.scoreInCornerLabel.text = String(score)
        self.scoreLabel.text = String(score)
        ballCenter = self.ball.center
        pillar1Center = self.pillar1.center
        pillar2Center = self.pillar2.center
        pillar3Center = self.pillar3.center
        pillar4Center = self.pillar4.center
        pillar5Center = self.pillar5.center
        pillar6Center = self.pillar6.center
        pillar7Center = self.pillar7.center
        pillar8Center = self.pillar8.center
        pillar9Center = self.pillar9.center
        pillar10Center = self.pillar10.center
        pillar11Center = self.pillar11.center
        pillar12Center = self.pillar12.center
        pillar13Center = self.pillar13.center
        pillar14Center = self.pillar14.center
        pillar15Center = self.pillar15.center
        pillar16Center = self.pillar16.center
        pillar17Center = self.pillar17.center
        pillar18Center = self.pillar18.center
        pillar19Center = self.pillar19.center
        pillar20Center = self.pillar20.center
        pillar21Center = self.pillar21.center
        pillar22Center = self.pillar22.center
        pillar23Center = self.pillar23.center
        pillar24Center = self.pillar24.center
        pillar25Center = self.pillar25.center
        pillar26Center = self.pillar26.center
        pillarTop1Center = self.pillarTop1.center
        pillarTop2Center = self.pillarTop2.center
        pillarTop3Center = self.pillarTop3.center
        pillarTop4Center = self.pillarTop4.center
        pillarTop5Center = self.pillarTop5.center
        pillarTop6Center = self.pillarTop6.center
        
        
        if ballChange == false {
            ballRight = false
        } else {
            ballRight = true
        }
        if ballRight == true {
            ball.center.x += 6.5
            ball.center.y -= 0.5
        } else {
            ball.center.x -= 6.5
            ball.center.y -= 0.5
        }
    
        ball.center.y += 0.5
        pillar1.center.y += 5
        pillar2.center.y += 5
        pillar3.center.y += 5
        pillar4.center.y += 5
        pillar5.center.y += 5
        pillar6.center.y += 5
        pillar7.center.y += 5
        pillar8.center.y += 5
        pillar9.center.y += 5
        pillar10.center.y += 5
        pillar11.center.y += 5
        pillar12.center.y += 5
        pillar13.center.y += 5
        pillar14.center.y += 5
        pillar15.center.y += 5
        pillar16.center.y += 5
        pillar17.center.y += 5
        pillar18.center.y += 5
        pillar19.center.y += 5
        pillar20.center.y += 5
        pillar21.center.y += 5
        pillar22.center.y += 5
        pillar23.center.y += 5
        pillar24.center.y += 5
        pillar25.center.y += 5
        pillar26.center.y += 5
        
        pillar1.center = regeneratePillars(pillar1.center.x, floaty: pillar1.center.y, pillarNumber: 1)
        pillar2.center = regeneratePillars(pillar2.center.x, floaty: pillar2.center.y, pillarNumber: 2)
        pillar3.center = regeneratePillars(pillar3.center.x, floaty: pillar3.center.y, pillarNumber: 3)
        pillar4.center = regeneratePillars(pillar4.center.x, floaty: pillar4.center.y, pillarNumber: 4)
        pillar5.center = regeneratePillars(pillar5.center.x, floaty: pillar5.center.y, pillarNumber: 5)
        pillar6.center = regeneratePillars(pillar6.center.x, floaty: pillar6.center.y, pillarNumber: 6)
        pillar7.center = regeneratePillars(pillar7.center.x, floaty: pillar7.center.y, pillarNumber: 7)
        pillar8.center = regeneratePillars(pillar8.center.x, floaty: pillar8.center.y, pillarNumber: 8)
        pillar9.center = regeneratePillars(pillar9.center.x, floaty: pillar9.center.y, pillarNumber: 9)
        pillar10.center = regeneratePillars(pillar10.center.x, floaty: pillar10.center.y, pillarNumber: 10)
        pillar11.center = regeneratePillars(pillar11.center.x, floaty: pillar11.center.y, pillarNumber: 11)
        pillar12.center = regeneratePillars(pillar12.center.x, floaty: pillar12.center.y, pillarNumber: 12)
        pillar13.center = regeneratePillars(pillar13.center.x, floaty: pillar13.center.y, pillarNumber: 13)
        pillar14.center = regeneratePillars(pillar14.center.x, floaty: pillar14.center.y, pillarNumber: 14)
        pillar15.center = regeneratePillars(pillar15.center.x, floaty: pillar15.center.y, pillarNumber: 15)
        pillar16.center = regeneratePillars(pillar16.center.x, floaty: pillar16.center.y, pillarNumber: 16)
        pillar17.center = regeneratePillars(pillar17.center.x, floaty: pillar17.center.y, pillarNumber: 17)
        pillar18.center = regeneratePillars(pillar18.center.x, floaty: pillar18.center.y, pillarNumber: 18)
        pillar19.center = regeneratePillars(pillar19.center.x, floaty: pillar19.center.y, pillarNumber: 19)
        pillar20.center = regeneratePillars(pillar20.center.x, floaty: pillar20.center.y, pillarNumber: 20)
        pillar21.center = regeneratePillars(pillar21.center.x, floaty: pillar21.center.y, pillarNumber: 21)
        pillar22.center = regeneratePillars(pillar22.center.x, floaty: pillar22.center.y, pillarNumber: 22)
        pillar23.center = regeneratePillars(pillar23.center.x, floaty: pillar23.center.y, pillarNumber: 23)
        pillar24.center = regeneratePillars(pillar24.center.x, floaty: pillar24.center.y, pillarNumber: 24)
        pillar25.center = regeneratePillars(pillar25.center.x, floaty: pillar25.center.y, pillarNumber: 25)
        pillar26.center = regeneratePillars(pillar26.center.x, floaty: pillar26.center.y, pillarNumber: 26)
        
        if (((ball.center.x > pillarTop1.center.x - 50) && (ball.center.x < pillarTop1.center.x + 50) && (ball.center.y > pillarTop1.center.y - 45) && (ball.center.y < pillarTop1.center.y + 45)) ||
            ((ball.center.x > pillarTop2.center.x - 50) && (ball.center.x < pillarTop2.center.x + 50) && (ball.center.y > pillarTop2.center.y - 45) && (ball.center.y < pillarTop2.center.y + 45)) || ((ball.center.x > pillarTop3.center.x - 50) && (ball.center.x < pillarTop3.center.x + 50) && (ball.center.y > pillarTop3.center.y - 45) && (ball.center.y < pillarTop3.center.y + 45)) || ((ball.center.x > pillarTop4.center.x - 50) && (ball.center.x < pillarTop4.center.x + 50) && (ball.center.y > pillarTop4.center.y - 45) && (ball.center.y < pillarTop4.center.y + 45)) || ((ball.center.x > pillarTop5.center.x - 50) && (ball.center.x < pillarTop5.center.x + 50) && (ball.center.y > pillarTop5.center.y - 45) && (ball.center.y < pillarTop5.center.y + 45)) || ((ball.center.x > pillarTop6.center.x - 50) && (ball.center.x < pillarTop6.center.x + 50) && (ball.center.y > pillarTop6.center.y - 45) && (ball.center.y < pillarTop6.center.y + 45))) {
        } else {
            gameOverFunc()
        }
        
               if CGRectIntersectsRect(ball.frame, pillar1.frame) {
                self.pillarTop1.center = CGPointMake(pillar26.center.x, pillar26.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar1.center.x, pillar1.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar2.center.x, pillar2.center.y - 35)
                self.pillarTop4.center = CGPointMake(pillar25.center.x, pillar25.center.y - 35)
                self.pillarTop5.center = CGPointMake(pillar24.center.x, pillar24.center.y - 35)
                self.pillarTop6.center = CGPointMake(pillar23.center.x, pillar23.center.y - 35)
              
             } else if CGRectIntersectsRect(ball.frame, pillar2.frame) {
                
                self.pillarTop1.center = CGPointMake(pillar1.center.x, pillar1.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar2.center.x, pillar2.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar3.center.x, pillar3.center.y - 35)
                self.pillarTop4.center = CGPointMake(pillar26.center.x, pillar26.center.y - 35)
                self.pillarTop5.center = CGPointMake(pillar25.center.x, pillar25.center.y - 35)
                self.pillarTop6.center = CGPointMake(pillar24.center.x, pillar24.center.y - 35)
               
               } else if CGRectIntersectsRect(ball.frame, pillar3.frame) {
                self.pillarTop4.hidden = true
                self.pillarTop5.hidden = true
                self.pillarTop6.hidden = true
                self.pillarTop1.center = CGPointMake(pillar2.center.x, pillar2.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar3.center.x, pillar3.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar4.center.x, pillar4.center.y - 35)
             } else if CGRectIntersectsRect(ball.frame, pillar4.frame) {
                self.pillarTop1.center = CGPointMake(pillar3.center.x, pillar3.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar4.center.x, pillar4.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar5.center.x, pillar5.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar5.frame) {
                self.pillarTop1.center = CGPointMake(pillar4.center.x, pillar4.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar5.center.x, pillar5.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar6.center.x, pillar6.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar6.frame) {
                self.pillarTop1.center = CGPointMake(pillar5.center.x, pillar5.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar6.center.x, pillar6.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar7.center.x, pillar7.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar7.frame) {
                self.pillarTop1.center = CGPointMake(pillar6.center.x, pillar6.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar7.center.x, pillar7.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar8.center.x, pillar8.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar8.frame) {
                self.pillarTop1.center = CGPointMake(pillar7.center.x, pillar7.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar8.center.x, pillar8.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar9.center.x, pillar9.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar9.frame) {
                self.pillarTop1.center = CGPointMake(pillar8.center.x, pillar8.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar9.center.x, pillar9.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar10.center.x, pillar10.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar10.frame) {
                self.pillarTop1.center = CGPointMake(pillar9.center.x, pillar9.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar10.center.x, pillar10.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar11.center.x, pillar11.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar11.frame) {
                self.pillarTop1.center = CGPointMake(pillar10.center.x, pillar10.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar11.center.x, pillar11.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar12.center.x, pillar12.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar12.frame) {
                self.pillarTop1.center = CGPointMake(pillar11.center.x, pillar11.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar12.center.x, pillar12.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar13.center.x, pillar13.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar13.frame) {
                self.pillarTop1.center = CGPointMake(pillar12.center.x, pillar12.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar13.center.x, pillar13.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar14.center.x, pillar14.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar14.frame) {
                self.pillarTop1.center = CGPointMake(pillar13.center.x, pillar13.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar14.center.x, pillar14.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar15.center.x, pillar15.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar15.frame) {
                self.pillarTop1.center = CGPointMake(pillar14.center.x, pillar14.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar15.center.x, pillar15.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar16.center.x, pillar16.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar16.frame) {
                self.pillarTop1.center = CGPointMake(pillar15.center.x, pillar15.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar16.center.x, pillar16.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar17.center.x, pillar17.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar17.frame) {
                self.pillarTop1.center = CGPointMake(pillar16.center.x, pillar16.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar17.center.x, pillar17.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar18.center.x, pillar18.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar18.frame) {
                self.pillarTop1.center = CGPointMake(pillar17.center.x, pillar17.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar18.center.x, pillar18.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar19.center.x, pillar19.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar19.frame) {
                self.pillarTop1.center = CGPointMake(pillar18.center.x, pillar18.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar19.center.x, pillar19.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar20.center.x, pillar20.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar20.frame) {
                self.pillarTop1.center = CGPointMake(pillar19.center.x, pillar19.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar20.center.x, pillar20.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar21.center.x, pillar21.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar21.frame) {
                self.pillarTop1.center = CGPointMake(pillar20.center.x, pillar20.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar21.center.x, pillar21.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar22.center.x, pillar22.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar22.frame) {
                self.pillarTop1.center = CGPointMake(pillar21.center.x, pillar21.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar22.center.x, pillar22.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar23.center.x, pillar23.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar23.frame) {
                self.pillarTop1.center = CGPointMake(pillar22.center.x, pillar22.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar23.center.x, pillar23.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar24.center.x, pillar24.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar24.frame) {
                self.pillarTop1.center = CGPointMake(pillar23.center.x, pillar23.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar24.center.x, pillar24.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar25.center.x, pillar25.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar25.frame) {
                self.pillarTop1.center = CGPointMake(pillar24.center.x, pillar24.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar25.center.x, pillar25.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar26.center.x, pillar26.center.y - 35)

             } else if CGRectIntersectsRect(ball.frame, pillar26.frame) {
                self.pillarTop1.center = CGPointMake(pillar25.center.x, pillar25.center.y - 35)
                self.pillarTop2.center = CGPointMake(pillar26.center.x, pillar26.center.y - 35)
                self.pillarTop3.center = CGPointMake(pillar1.center.x, pillar1.center.y - 35)

            
        
        
        }
        
        
        
}
    func regeneratePillars(floatx: CGFloat, floaty: CGFloat, pillarNumber: Int) -> (CGPoint) {
        var center = CGPointMake(floatx, floaty)
        
        if checkPillarPosition(floaty) == true {
            switch pillarNumber{
            case 1:
                gameView.sendSubviewToBack(pillar1)
                center = pillarPlacement(self.pillar26.center.x, y: self.pillar26.center.y)
                break
            case 2:
                gameView.sendSubviewToBack(pillar2)
                center = pillarPlacement(self.pillar1.center.x, y: self.pillar1.center.y)
                break
            case 3:
                gameView.sendSubviewToBack(pillar3)
                center = pillarPlacement(self.pillar2.center.x, y: self.pillar2.center.y)
                break
            case 4:
                gameView.sendSubviewToBack(pillar4)
                center = pillarPlacement(self.pillar3.center.x, y: self.pillar3.center.y)
                break
            case 5:
                gameView.sendSubviewToBack(pillar5)
                center = pillarPlacement(self.pillar4.center.x, y: self.pillar4.center.y)
                break
            case 6:
                gameView.sendSubviewToBack(pillar6)
                center = pillarPlacement(self.pillar5.center.x, y: self.pillar5.center.y)
                break
            case 7:
                gameView.sendSubviewToBack(pillar7)
                center = pillarPlacement(self.pillar6.center.x, y: self.pillar6.center.y)
                break
            case 8:
                gameView.sendSubviewToBack(pillar8)
                center = pillarPlacement(self.pillar7.center.x, y: self.pillar7.center.y)
                break
            case 9:
                gameView.sendSubviewToBack(pillar9)
                center = pillarPlacement(self.pillar8.center.x, y: self.pillar8.center.y)
                break
            case 10:
                gameView.sendSubviewToBack(pillar10)
                center = pillarPlacement(self.pillar9.center.x, y: self.pillar9.center.y)
                break
            case 11:
                gameView.sendSubviewToBack(pillar11)
                center = pillarPlacement(self.pillar10.center.x, y: self.pillar10.center.y)
                break
            case 12:
                gameView.sendSubviewToBack(pillar12)
                center = pillarPlacement(self.pillar11.center.x, y: self.pillar11.center.y)
                break
            case 13:
                gameView.sendSubviewToBack(pillar13)
                center = pillarPlacement(self.pillar12.center.x, y: self.pillar12.center.y)
                break
            case 14:
                gameView.sendSubviewToBack(pillar14)
                center = pillarPlacement(self.pillar13.center.x, y: self.pillar13.center.y)
                break
            case 15:
                gameView.sendSubviewToBack(pillar15)
                center = pillarPlacement(self.pillar14.center.x, y: self.pillar14.center.y)
                break
            case 16:
                gameView.sendSubviewToBack(pillar16)
                center = pillarPlacement(self.pillar15.center.x, y: self.pillar15.center.y)
                break
            case 17:
                gameView.sendSubviewToBack(pillar17)
                center = pillarPlacement(self.pillar16.center.x, y: self.pillar16.center.y)
                break
            case 18:
                gameView.sendSubviewToBack(pillar18)
                center = pillarPlacement(self.pillar17.center.x, y: self.pillar17.center.y)
                break
            case 19:
                gameView.sendSubviewToBack(pillar19)
                center = pillarPlacement(self.pillar18.center.x, y: self.pillar18.center.y)
                break
            case 20:
                gameView.sendSubviewToBack(pillar20)
                center = pillarPlacement(self.pillar19.center.x, y: self.pillar19.center.y)
                break
            case 21:
                gameView.sendSubviewToBack(pillar21)
                center = pillarPlacement(self.pillar20.center.x, y: self.pillar20.center.y)
                break
            case 22:
                gameView.sendSubviewToBack(pillar22)
                center = pillarPlacement(self.pillar21.center.x, y: self.pillar21.center.y)
                break
            case 23:
                gameView.sendSubviewToBack(pillar23)
                center = pillarPlacement(self.pillar22.center.x, y: self.pillar22.center.y)
                break
            case 24:
                gameView.sendSubviewToBack(pillar24)
                center = pillarPlacement(self.pillar23.center.x, y: self.pillar23.center.y)
                break
            case 25:
                gameView.sendSubviewToBack(pillar25)
                center = pillarPlacement(self.pillar24.center.x, y: self.pillar24.center.y)
                break
            case 26:
                gameView.sendSubviewToBack(pillar26)
                center = pillarPlacement(self.pillar25.center.x, y: self.pillar25.center.y)
                break

            default:
                break
                
            
            }
        }
    return (center)
    }
    
    func checkPillarPosition(y: CGFloat) -> (Bool) {
        var low: Bool = false
        
        if (y > 720) {
            low = true
        }
        
        return(low)
    }
    
    // this function places pillars
    func pillarPlacement(x: CGFloat, y: CGFloat)  -> (CGPoint) {
    
    var pillarNewX: CGFloat
    var pillarNewY: CGFloat
    let random: Int = Int(arc4random() % 2)
    
    if random == 1 {
    pillarNewX = x + 39
    pillarNewY = y - 29
        
        if pillarNewX >= 319 {
            pillarNewX = x - 40
            pillarNewY = y - 30
        }
    
    } else {
   pillarNewX = x - 40
   pillarNewY = y - 30
        
        if pillarNewX <=  17 {
            pillarNewX = x + 39
            pillarNewY = y - 29
        }
    
    }
    let newPillarCenter = CGPointMake(pillarNewX, pillarNewY)
    return(newPillarCenter)


}
    override func viewDidLayoutSubviews() {
        if let newBallCenter = ballCenter {
            self.ball.center = newBallCenter
        }
        if let newPillar1Center = pillar1Center {
            self.pillar1.center = newPillar1Center
        }
        if let newPillar2Center = pillar2Center {
            self.pillar2.center = newPillar2Center
        }

        if let newPillar3Center = pillar3Center {
            self.pillar3.center = newPillar3Center
        }

        if let newPillar4Center = pillar4Center {
            self.pillar4.center = newPillar4Center
        }

        if let newPillar5Center = pillar5Center {
            self.pillar5.center = newPillar5Center
        }

        if let newPillar6Center = pillar6Center {
            self.pillar6.center = newPillar6Center
        }
        if let newPillar7Center = pillar7Center {
            self.pillar7.center = newPillar7Center
        }

        if let newPillar8Center = pillar8Center {
            self.pillar8.center = newPillar8Center
        }
        if let newPillar9Center = pillar9Center {
            self.pillar9.center = newPillar9Center
        }
        if let newPillar10Center = pillar10Center {
            self.pillar10.center = newPillar10Center
        }
        if let newPillar11Center = pillar11Center {
            self.pillar11.center = newPillar11Center
        }
        if let newPillar12Center = pillar12Center {
            self.pillar12.center = newPillar12Center
        }
        if let newPillar12Center = pillar12Center {
            self.pillar12.center = newPillar12Center
        }
        if let newPillar13Center = pillar13Center {
            self.pillar13.center = newPillar13Center
        }
        if let newPillar14Center = pillar14Center {
            self.pillar14.center = newPillar14Center
        }
        if let newPillar15Center = pillar15Center {
            self.pillar15.center = newPillar15Center
        }
        if let newPillar16Center = pillar16Center {
            self.pillar16.center = newPillar16Center
        }
        if let newPillar17Center = pillar17Center {
            self.pillar17.center = newPillar17Center
        }
        if let newPillar18Center = pillar18Center {
            self.pillar18.center = newPillar18Center
        }
        if let newPillar19Center = pillar19Center {
            self.pillar19.center = newPillar19Center
        }
        if let newPillar20Center = pillar20Center {
            self.pillar20.center = newPillar20Center
        }
        if let newPillar21Center = pillar21Center {
            self.pillar21.center = newPillar21Center
        
        if let newPillar22Center = pillar22Center {
            self.pillar22.center = newPillar22Center
        }
        if let newPillar23Center = pillar23Center {
            self.pillar23.center = newPillar23Center
        }
        if let newPillar24Center = pillar24Center {
            self.pillar24.center = newPillar24Center
        }
        if let newPillar25Center = pillar25Center {
            self.pillar25.center = newPillar25Center
        }
        if let newPillar26Center = pillar26Center {
            self.pillar26.center = newPillar26Center
            }
            if let newPillarTop1Center = pillarTop1Center {
                self.pillarTop1.center = newPillarTop1Center
            }
            if let newPillarTop2Center = pillarTop2Center {
                self.pillarTop2.center = newPillarTop2Center
            }

            if let newPillarTop3Center = pillarTop3Center {
                self.pillarTop3.center = newPillarTop3Center
            }

            if let newPillarTop4Center = pillarTop4Center {
                self.pillarTop4.center = newPillarTop4Center
            }

            if let newPillarTop5Center = pillarTop5Center {
                self.pillarTop5.center = newPillarTop5Center
            }

            if let newPillarTop6Center = pillarTop6Center {
                self.pillarTop6.center = newPillarTop6Center
            }

    }
}
    
    func gameOverFunc() {
        self.tapsvalid = false
        self.timer.invalidate()
        self.gameOver.hidden = false
        self.scoreInCornerLabel.hidden = true
        self.retryButton.hidden = false
        self.scoreLabel.hidden = false
        self.scoreBoard.hidden = false
        self.highScoreLabel.hidden = false
        
        if score > highScore {
            highScore = score
        }
        
        defaults.setInteger(highScore, forKey: "Highscore")
       
        self.scoreLabel.text = String(score)
        self.highScoreLabel.text = String(highScore)
        
        gameView.sendSubviewToBack(pillar1)
        gameView.sendSubviewToBack(pillar2)
        gameView.sendSubviewToBack(pillar3)
        gameView.sendSubviewToBack(pillar4)
        gameView.sendSubviewToBack(pillar5)
        gameView.sendSubviewToBack(pillar6)
        gameView.sendSubviewToBack(pillar7)
        gameView.sendSubviewToBack(pillar8)
        gameView.sendSubviewToBack(pillar9)
        gameView.sendSubviewToBack(pillar10)
        gameView.sendSubviewToBack(pillar11)
        gameView.sendSubviewToBack(pillar12)
        gameView.sendSubviewToBack(pillar13)
        gameView.sendSubviewToBack(pillar14)
        gameView.sendSubviewToBack(pillar15)
        gameView.sendSubviewToBack(pillar16)
        gameView.sendSubviewToBack(pillar17)
        gameView.sendSubviewToBack(pillar18)
        gameView.sendSubviewToBack(pillar19)
        gameView.sendSubviewToBack(pillar20)
        gameView.sendSubviewToBack(pillar21)
        gameView.sendSubviewToBack(pillar22)
        gameView.sendSubviewToBack(pillar23)
        gameView.sendSubviewToBack(pillar24)
        gameView.sendSubviewToBack(pillar25)
        gameView.sendSubviewToBack(pillar26)
        
    }


    
    
}



