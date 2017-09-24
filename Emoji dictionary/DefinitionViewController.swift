//
//  DefinitionViewController.swift
//  Emoji dictionary
//
//  Created by Chin Zhe Ying on Sep/24/17.
//  Copyright © 2017 Chin Zhe Ying. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "No emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if(emoji == "🐹"){
            definitionLabel.text = "A cute hamster"
        }
        if(emoji == "😎"){
            definitionLabel.text = "A dude with sunglasses"
        }
        if(emoji == "💩"){
            definitionLabel.text = "This is a poop"
        }
        if(emoji == "🐬"){
            definitionLabel.text = "A cute  dolphin"
        }
        if(emoji == "😀"){
            definitionLabel.text = "Smiley face"
        }
        if(emoji == "👠"){
            definitionLabel.text = "A red high heel shoe"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
