//
//  ViewController.swift
//  Multiples
//
//  Created by Ron Lipkin on 1/30/16.
//  Copyright © 2016 rolp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var multiplesLogo: UIImageView!
    @IBOutlet weak var multTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var quitBtn: UIButton!
    
    var sum = 0
    var prevSum = 0
    var multiple = 0
    var max = 1000
    
    @IBAction func onPlayBtnPress(sender: UIButton!) {
        
        if Int(multTxt.text!) != nil {
            multiplesLogo.hidden = true
            playBtn.hidden = true
            multTxt.hidden = true
            
            quitBtn.hidden = false
            resultLbl.hidden = false
            addBtn.hidden = false
            
            multiple = Int(multTxt.text!)!
        }
    }
    
    @IBAction func onAddBtnPressed(sender: UIButton!) {
        addMultiple()
        updateResultLbl(prevSum, mult: multiple, newSum: sum)
        if sum >= 1000 {
            resetGame()
        }
    }
    
    @IBAction func onQuitBtnPressed(sender: UIButton!) {
        resetGame()
    }
    
    func addMultiple() {
        prevSum = sum
        sum = prevSum + multiple
    }
    
    func updateResultLbl(oldSum: Int, mult: Int, newSum: Int) {
        resultLbl.text = "\(oldSum) + \(mult) = \(newSum)"
    }
    
    func resetGame() {
        multiplesLogo.hidden = false
        playBtn.hidden = false
        multTxt.hidden = false
        
        quitBtn.hidden = true
        resultLbl.hidden = true
        addBtn.hidden = true
        
        multiple = Int(multTxt.text!)!
        sum = 0;
        prevSum = 0;
        resultLbl.text = "Press Add to add!"
        multTxt.text = nil
    }
    
    
}

