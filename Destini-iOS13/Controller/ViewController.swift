//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
//step 5.5
// to access everything in the StoryBrain struct I need to make an instance in order to reference it
    var storyBrain = StoryBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {

//step 5.6
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        
        updateUI()
        
    }
    
    
    func updateUI () {
        let storyChoice = storyBrain.stories[storyBrain.storyNumber]
        
        storyLabel.text = storyChoice.title
        choice1Button.setTitle(storyChoice.choice1,for: .normal)
        choice2Button.setTitle(storyChoice.choice2, for: .normal)
        
    }
    
    
}


