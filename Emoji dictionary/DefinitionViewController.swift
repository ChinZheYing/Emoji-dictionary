//
//  DefinitionViewController.swift
//  Emoji dictionary
//
//  Created by Chin Zhe Ying on Sep/24/17.
//  Copyright © 2017 Chin Zhe Ying. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var BirthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        BirthYearLabel.text = "BirthYear: \(emoji.birthYear)"
        definitionLabel.text = emoji.definition
        categoryLabel.text = "Category: \(emoji.category)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
