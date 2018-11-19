//
//  ViewController.swift
//  eggTimer
//
//  Created by Anna Kaukh on 11/19/18.
//  Copyright © 2018 Anna Kaukh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLbl: UILabel!
    
    var timer = Timer()
    var timerCounter = 210
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pauseBtnPressed(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func playBtnPressed(_ sender: Any) {
        if timer.isValid == false {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerCounting), userInfo: nil, repeats: true)
        }
        
    }
    
    @IBAction func ressetBtnPressed(_ sender: Any) {
        timerCounter = 210
    }
    
    @IBAction func decreaseBtnPressed(_ sender: Any) {
        if timerCounter >= 10 {
            timerCounter -= 10
        }
    }
    
    
    @IBAction func increaseBtnPressed(_ sender: Any) {
        if timerCounter <= 200 {
            timerCounter += 10
        }
    }
    
    @objc func timerCounting() {
        timerLbl.text = String(timerCounter)
        if timerCounter != 0 {
            timerCounter -= 1
        }
    }
}

