//
//  ViewController.swift
//  Bouncing Labels
//
//  Created by Alam, Mahshadul on 6/4/15.
//  Copyright (c) 2015 HERR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //1. Declare ivars (instance variables)
    var myFirstLabel: UILabel!
    var iPhoneLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 2. Creare the labels
        
        myFirstLabel = UILabel()
        iPhoneLabel = UILabel()
        
        addLabels()
        var tapGesture = UITapGestureRecognizer(target: self, action: Selector("handleTapGesture:"))
        view.addGestureRecognizer(tapGesture)
    }
    
    func handleTapGesture(tapGesture: UITapGestureRecognizer){
        println("tap")
        addLabels()
    }
    
    func addLabels() {
        
        myFirstLabel.text = "My first"
        myFirstLabel.font = UIFont.systemFontOfSize(30)
        myFirstLabel.sizeToFit()
        
        myFirstLabel.center = CGPoint(x: 150, y: 40)
        view.addSubview(myFirstLabel)
        
        UIView.animateWithDuration(0.5, delay: 0.1, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.0, options: nil, animations: {
    
            self.myFirstLabel.center = CGPoint(x: 150-100, y: 40)
            //self.myFirstLabel.center = CGPoint(x: 150, y: 20 + 200)
            
            }, completion: nil)
        
        iPhoneLabel.text = "iPhone app"
        iPhoneLabel.font = UIFont.boldSystemFontOfSize(28)
        iPhoneLabel.sizeToFit()
        iPhoneLabel.center = CGPoint(x: 200, y: 90)
        view.addSubview(iPhoneLabel)
        
        iPhoneLabel.alpha = 0 // Hidden
        UIView.animateWithDuration(2.0, delay: 0.6, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: nil, animations: {
            
            self.iPhoneLabel.center = CGPoint(x: 200-100, y: 90)
//            self.iPhoneLabel.center = CGPoint(x: 200, y: 90 + 200)
            self.iPhoneLabel.alpha = 1 //visible
            
            }, completion: nil )
        
        
    //We can use the following method and print to find size fo simulator
        println("\(view.bounds.size)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

