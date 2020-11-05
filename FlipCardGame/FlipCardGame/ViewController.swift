//
//  ViewController.swift
//  FlipCardGame
//
//  Created by zencher on 2020/10/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var card0: FlipCard!
    @IBOutlet weak var card1: FlipCard!
    @IBOutlet weak var card2: FlipCard!
    @IBOutlet weak var card3: FlipCard!
    @IBOutlet weak var card4: FlipCard!
    @IBOutlet weak var card5: FlipCard!
    var cardName: [String] = ["1", "1", "2", "2", "3", "3"]
    var numberOfFlipCard: Int = 0
    var timer = Timer()
    var name:String?
    var firstFlipCard:FlipCard!

    override func viewDidLoad() {
        super.viewDidLoad()
        cardName.shuffle()
        card0.cardImageName = cardName[0]
        card0.vc = self
        card1.cardImageName = cardName[1]
        card1.vc = self
        card2.cardImageName = cardName[2]
        card2.vc = self
        card3.cardImageName = cardName[3]
        card3.vc = self
        card4.cardImageName = cardName[4]
        card4.vc = self
        card5.cardImageName = cardName[5]
        card5.vc = self
    }

    func fliping(card:FlipCard) {
        numberOfFlipCard += 1
        if numberOfFlipCard == 1 {
            firstFlipCard = card
           
        } else if numberOfFlipCard % 2 == 0 {
            if card.cardImageName == name {
//                print("Y")
            } else {
                Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { [self] timer in
                    card.image = UIImage(named: "background")
                    self.firstFlipCard.image =  UIImage(named: "background")
                    timer.invalidate()
                    card.isFront = false
                    firstFlipCard.isFront = false
                    self.numberOfFlipCard = 0
                }
            }
        }
        name = card.cardImageName
//        print("press", card.cardImageName)
    }
    
}

