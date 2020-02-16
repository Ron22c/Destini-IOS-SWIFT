//
//  ViewController.swift
//  Destini-IOS
//
//  Created by Ranajit Chandra on 16/02/20.
//  Copyright © 2020 Ranajit Chandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
    let answer1a = "I\'ll hop in. Thanks for the help!"
    let answer1b = "Better ask him if he\'s a murderer first."
    
    
    let story2 = "He nods slowly, unphased by the question."
    let answer2a = "At least he\'s honest. I\'ll climb in."
    let answer2b = "Wait, I know how to change a tire."
    
    let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
    let answer3a = "I love Elton John! Hand him the cassette tape."
    let answer3b = "It\'s him or me! You take the knife and stab him."
    
    let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
    let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
    let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
    
    
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet var restartButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restart();
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            if self.storyTextView.text == self.story1 {
                self.storyTextView.text = self.story3;
                self.topButton.setTitle(self.answer3a, for: UIControl.State.normal);
                self.bottomButton.setTitle(self.answer3b, for: UIControl.State.normal);
            } else if self.storyTextView.text == self.story3 {
                self.storyTextView.text = self.story6;
                self.topButton.isHidden = true;
                self.bottomButton.isHidden = true;
            } else if self.storyTextView.text == self.story2 {
                self.storyTextView.text = self.story3;
                self.topButton.setTitle(self.answer3a, for: UIControl.State.normal);
                self.bottomButton.setTitle(self.answer3b, for: UIControl.State.normal);
            }
            
        } else if sender.tag == 2 {
            if self.storyTextView.text == self.story1 {
                self.storyTextView.text = self.story2;
                self.topButton.setTitle(self.answer2a, for: UIControl.State.normal);
                self.bottomButton.setTitle(self.answer2b, for: UIControl.State.normal);
            } else if self.storyTextView.text == self.story3 {
                self.storyTextView.text = self.story5;
                self.topButton.isHidden = true;
                self.bottomButton.isHidden = true;
            } else if self.storyTextView.text == self.story2 {
                self.storyTextView.text = self.story4;
                self.topButton.isHidden = true;
                self.bottomButton.isHidden = true;
            }
        }
        
        if (self.storyTextView.text == self.story1 ||
            self.storyTextView.text == self.story4 ||
            self.storyTextView.text == self.story5 ||
            self.storyTextView.text == self.story6) {
            restartButton.isHidden = false;
        }
    
    }
    
    func restart () {
        self.storyTextView.text = self.story1;
        self.topButton.setTitle(self.answer1a, for: UIControl.State.normal);
        self.bottomButton.setTitle(self.answer1b, for: UIControl.State.normal);
        self.restartButton.isHidden = true;
        self.topButton.isHidden = false;
        self.bottomButton.isHidden = false;
    }
    
    @IBAction func actionButton(_ sender: UIButton) {
        restart();
    }
}

