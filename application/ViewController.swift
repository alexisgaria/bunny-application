//
//  ViewController.swift
//  application
//
//  Created by Alexis Garia on 2/26/20.
//  Copyright © 2020 Alexis Garia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var background: UIImageView!
    
    
    @IBOutlet weak var bunny: UIImageView!
    
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func setSpeed(_ sender: Any) {
        bunny.animationDuration = TimeInterval (3.0-slider.value)
        bunny.startAnimating()
    }
    
    @IBAction func hide(_ sender: Any) {
        
        if (background.isHidden){
            background.isHidden = false
        }
        else
        {
            background.isHidden = true
            
        }
        
        
    }
    
    
    @IBAction func startStop(_ sender: Any) {
               
               if (bunny.isAnimating)
               {
                   bunny.stopAnimating()
               } else
               {
                   bunny.startAnimating()
               }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    let hopAnimation: [UIImage] = [
        UIImage(named: "frame-1")!,
        UIImage(named: "frame-2")!,
        UIImage(named: "frame-3")!,
        UIImage(named: "frame-4")!,
        UIImage(named: "frame-5")!,
        UIImage(named: "frame-6")!,
        UIImage(named: "frame-7")!,
        UIImage(named: "frame-8")!,
        UIImage(named: "frame-9")!,
        UIImage(named: "frame-10")!,
        UIImage(named: "frame-11")!,
        UIImage(named: "frame-12")!,
        UIImage(named: "frame-13")!,
        UIImage(named: "frame-14")!,
        UIImage(named: "frame-15")!,
        UIImage(named: "frame-16")!,
        UIImage(named: "frame-17")!,
        UIImage(named: "frame-18")!,
        UIImage(named: "frame-19")!,
        UIImage(named: "frame-20")!,
        ]
        
        bunny.animationImages = hopAnimation
        bunny.animationDuration = 1.0
        //bunny view start animation
        
    }

}

