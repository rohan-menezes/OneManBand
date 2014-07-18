//
//  ViewController.swift
//  MySecondApp
//
//  Created by Rohan on 7/8/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit
import CoreMotion

let audioController = PdAudioController()

class ViewController: UIViewController {
    
    let motionManager = CMMotionManager()
    var onDrums = false
    
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
    @IBOutlet var A: UIButton
    @IBOutlet var Am: UIButton
    @IBOutlet var C: UIButton
    @IBOutlet var D: UIButton
    @IBOutlet var Dm: UIButton
    @IBOutlet var E: UIButton
    @IBOutlet var Em: UIButton
    @IBOutlet var F: UIButton
    @IBOutlet var G: UIButton
    @IBOutlet var Cymbals: UIButton
    @IBOutlet var Snare: UIButton
    @IBOutlet var Bass: UIButton
    @IBOutlet var Toms: UIButton
    @IBOutlet var Drums: UIButton
    @IBOutlet var BackDrums: UIButton
    
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        startAccelerationCollection()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func startAccelerationCollection()-> Void{
        /*
        motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue.mainQueue(), withHandler: {(accelerometerData :     CMAccelerometerData!, error : NSError!) in
            var data = [accelerometerData.acceleration.x, accelerometerData.acceleration.y, accelerometerData.acceleration.z]
            
            println("x: \(String(accelerometerData.acceleration.x))")
           println("y: \(String(accelerometerData.acceleration.y))")
            println("z: \(String(accelerometerData.acceleration.z))")
            PdBase.sendList(data, toReceiver:"accelerometer")
            })
        */
        
        motionManager.gyroUpdateInterval = 0.15;
        
        motionManager.startGyroUpdatesToQueue(NSOperationQueue.mainQueue(), withHandler: {(gyroscopeData :     CMGyroData!, error : NSError!) in
            var data = [gyroscopeData.rotationRate.x, gyroscopeData.rotationRate.y, gyroscopeData.rotationRate.z]
            
            println("x: \(String(gyroscopeData.rotationRate.x))")
            println("y: \(String(gyroscopeData.rotationRate.y))")
            println("z: \(String(gyroscopeData.rotationRate.z))")
            PdBase.sendList(data, toReceiver:"gyroscope")
            if self.onDrums == true
            {
                if gyroscopeData.rotationRate.x < -4.5 {
                    PdBase.sendFloat(6, toReceiver: "instrument")
                }
                if gyroscopeData.rotationRate.x > 5 {
                    PdBase.sendFloat(5, toReceiver: "instrument")
                }
                if gyroscopeData.rotationRate.z < -3.5 {
                    PdBase.sendFloat(3, toReceiver: "instrument")
                }
                if gyroscopeData.rotationRate.z > 4.5 {
                    PdBase.sendFloat(4, toReceiver: "instrument")
                }
            }
            })
        
    }
    @IBAction func DrumsAction(sender: UIButton) {
        onDrums = true
    }
    
    @IBAction func BackDrumsAction(sender: UIButton) {
        onDrums = false
    
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
    
    @IBAction func AAction(sender: UIButton) {
        PdBase.sendFloat(0, toReceiver: "pitchControl")
        PdBase.sendFloat(1, toReceiver: "instrument")
    }
    
    @IBAction func AmAction(sender: UIButton) {
        PdBase.sendFloat(1, toReceiver: "pitchControl")
        PdBase.sendFloat(1, toReceiver: "instrument")
    }
    
    @IBAction func CAction(sender: UIButton) {
        PdBase.sendFloat(2, toReceiver: "pitchControl")
        PdBase.sendFloat(1, toReceiver: "instrument")
    }
    
    @IBAction func DAction(sender: UIButton) {
        PdBase.sendFloat(3, toReceiver: "pitchControl")
        PdBase.sendFloat(1, toReceiver: "instrument")
    }
    
    @IBAction func DmAction(sender: UIButton) {
        PdBase.sendFloat(4, toReceiver: "pitchControl")
        PdBase.sendFloat(1, toReceiver: "instrument")
    }
    
    @IBAction func EAction(sender: UIButton) {
        PdBase.sendFloat(5, toReceiver: "pitchControl")
        PdBase.sendFloat(1, toReceiver: "instrument")
    }
    
    @IBAction func EmAction(sender: UIButton) {
        PdBase.sendFloat(6, toReceiver: "pitchControl")
        PdBase.sendFloat(1, toReceiver: "instrument")
    }
    
    @IBAction func FAction(sender: UIButton) {
        PdBase.sendFloat(7, toReceiver: "pitchControl")
        PdBase.sendFloat(1, toReceiver: "instrument")
    }
    
    @IBAction func GAction(sender: UIButton) {
        PdBase.sendFloat(8, toReceiver: "pitchControl")
        PdBase.sendFloat(1, toReceiver: "instrument")
    }
    
    @IBAction func BAction(sender: UIButton) {
        PdBase.sendFloat(9, toReceiver: "pitchControl")
        PdBase.sendFloat(1, toReceiver: "instrument")
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
    
/*    @IBAction func DrumsAction(sender: UIButton) {
        onDrums = true
    }
    
    @IBAction func BackDrumsAction(sender: UIButton) {
        onDrums = false
    }
*/
    
}

