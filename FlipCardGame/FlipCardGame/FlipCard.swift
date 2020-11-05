//
//  FlipCard.swift
//  FlipCardGame
//
//  Created by zencher on 2020/10/25.
//

import UIKit

class FlipCard: UIImageView {
    var isFront:Bool = false
    var cardImageName:String = ""
    var vc:ViewController?
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        isFront.toggle()
        print(isFront)
        
        if isFront == true {
            image = UIImage(named: cardImageName)
           
        } else {
            image = UIImage(named: "background")
        }
                
        vc?.fliping(card: self)
    }
   

}
