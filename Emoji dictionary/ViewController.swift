//
//  ViewController.swift
//  Emoji dictionary
//
//  Created by Chin Zhe Ying on Sep/23/17.
//  Copyright © 2017 Chin Zhe Ying. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.dataSource = self
        tableview.delegate = self
        emojis = makeEmojiArray()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false) //Used to choose whether to put shadow on the emoji that you've just selected when you press back. True to disable shadow. False to enable shadow
        let emoji = emojis[indexPath.row ]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "Smiling face with sunglasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💩"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley"
        emoji2.definition = "Smiling face with sunglasses"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😀"
        emoji3.birthYear = 2012
        emoji3.category = "Smiley"
        emoji3.definition = "Smiling face with sunglasses"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👠"
        emoji4.birthYear = 2013
        emoji4.category = "Smiley"
        emoji4.definition = "Smiling face with sunglasses"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐹"
        emoji5.birthYear = 2014
        emoji5.category = "Smiley"
        emoji5.definition = "Smiling face with sunglasses"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐬 "
        emoji6.birthYear = 2015
        emoji6.category = "Smiley"
        emoji6.definition = "Smiling face with sunglasses"
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6]
    }


}









