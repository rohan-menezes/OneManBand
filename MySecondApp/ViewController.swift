//
//  ViewController.swift
//  MySecondApp
//
//  Created by Rohan on 7/8/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

let audioController = PdAudioController()

class ViewController: UIViewController {
    
    @IBOutlet var Violin1: UIButton
    @IBOutlet var Violin2: UIButton
    @IBOutlet var Violin3: UIButton
    @IBOutlet var Violin4: UIButton
    @IBOutlet var Violin5: UIButton
    @IBOutlet var Violin6: UIButton
    @IBOutlet var Violin7: UIButton
    @IBOutlet var Violin8: UIButton
    @IBOutlet var Flute1: UIButton
    @IBOutlet var Flute2: UIButton
    @IBOutlet var Flute3: UIButton
    @IBOutlet var Flute4: UIButton
    @IBOutlet var Flute5: UIButton
    @IBOutlet var Flute6: UIButton
    @IBOutlet var Flute7: UIButton
    @IBOutlet var Flute8: UIButton
    @IBOutlet var Cymbals: UIButton
    @IBOutlet var Snare: UIButton
    @IBOutlet var Bass: UIButton
    @IBOutlet var Toms: UIButton
    
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Violin1Action(sender: UIButton) {
        PdBase.sendFloat(0, toReceiver: "pitchControl")
        PdBase.sendFloat(0, toReceiver: "instrument")
    }
    
    @IBAction func Violin2Action(sender: UIButton) {
        PdBase.sendFloat(1, toReceiver: "pitchControl")
        PdBase.sendFloat(0, toReceiver: "instrument")
    }
    
    @IBAction func Violin3Action(sender: UIButton) {
        PdBase.sendFloat(2, toReceiver: "pitchControl")
        PdBase.sendFloat(0, toReceiver: "instrument")
    }
    
    @IBAction func Violin4Action(sender: UIButton) {
        PdBase.sendFloat(3, toReceiver: "pitchControl")
        PdBase.sendFloat(0, toReceiver: "instrument")
    }
    
    @IBAction func Violin5Action(sender: UIButton) {
        PdBase.sendFloat(4, toReceiver: "pitchControl")
        PdBase.sendFloat(0, toReceiver: "instrument")
    }
    
    @IBAction func Violin6Action(sender: UIButton) {
        PdBase.sendFloat(5, toReceiver: "pitchControl")
        PdBase.sendFloat(0, toReceiver: "instrument")
    }
    
    @IBAction func Violin7Action(sender: UIButton) {
        PdBase.sendFloat(6, toReceiver: "pitchControl")
        PdBase.sendFloat(0, toReceiver: "instrument")
    }
    
    @IBAction func Violin8Action(sender: UIButton) {
        PdBase.sendFloat(7, toReceiver: "pitchControl")
        PdBase.sendFloat(0, toReceiver: "instrument")
    }
    
    @IBAction func Flute1Action(sender: UIButton) {
        PdBase.sendFloat(0, toReceiver: "pitchControl")
        PdBase.sendFloat(2, toReceiver: "instrument")
    }
    
    @IBAction func Flute2Action(sender: UIButton) {
        PdBase.sendFloat(1, toReceiver: "pitchControl")
        PdBase.sendFloat(2, toReceiver: "instrument")
    }
    
    @IBAction func Flute3Action(sender: UIButton) {
        PdBase.sendFloat(2, toReceiver: "pitchControl")
        PdBase.sendFloat(2, toReceiver: "instrument")
    }
    
    @IBAction func Flute4Action(sender: UIButton) {
        PdBase.sendFloat(3, toReceiver: "pitchControl")
        PdBase.sendFloat(2, toReceiver: "instrument")
    }
    
    @IBAction func Flute5Action(sender: UIButton) {
        PdBase.sendFloat(4, toReceiver: "pitchControl")
        PdBase.sendFloat(2, toReceiver: "instrument")
    }
    
    @IBAction func Flute6Action(sender: UIButton) {
        PdBase.sendFloat(5, toReceiver: "pitchControl")
        PdBase.sendFloat(2, toReceiver: "instrument")
    }
    
    @IBAction func Flute7Action(sender: UIButton) {
        PdBase.sendFloat(6, toReceiver: "pitchControl")
        PdBase.sendFloat(2, toReceiver: "instrument")
    }
    
    @IBAction func Flute8Action(sender: UIButton) {
        PdBase.sendFloat(7, toReceiver: "pitchControl")
        PdBase.sendFloat(2, toReceiver: "instrument")
    }
    
    @IBAction func CymbalsAction(sender: UIButton) {
        PdBase.sendFloat(5, toReceiver: "instrument")
    }
    
    @IBAction func SnareAction(sender: UIButton) {
        PdBase.sendFloat(3, toReceiver: "instrument")
    }
    
    @IBAction func BassAction(sender: UIButton) {
        PdBase.sendFloat(6, toReceiver: "instrument")
    }
    
    @IBAction func TomsAction(sender: UIButton) {
        PdBase.sendFloat(4, toReceiver: "instrument")
    }
    
}

