//
//  ViewController.swift
//  JamieColorAdjust
//
//  Created by stoller on 2019/3/20.
//  Copyright © 2019年 stoller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgview: UIImageView!
    @IBOutlet weak var Kila1View: UIImageView!
    @IBOutlet weak var Kila2View: UIImageView!
    @IBOutlet weak var Kila3View: UIImageView!
    @IBOutlet weak var RedSlider: UISlider!
    @IBOutlet weak var GreenSlider: UISlider!
    @IBOutlet weak var BlueSlider: UISlider!
    @IBOutlet weak var GreenLabel: UILabel!
    @IBOutlet weak var RedLabel: UILabel!
    @IBOutlet weak var BlueLabel: UILabel!
    @IBOutlet weak var AlphaLabel: UILabel!
    @IBOutlet weak var AlphaSlider: UISlider!
    @IBOutlet weak var RadiusLabel: UILabel!
    @IBOutlet weak var RadiusSlider: UISlider!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
        
    @IBAction func BgColorChanged(_ sender: UISlider) {
        RedSlider.value.round()
        GreenSlider.value.round()
        BlueSlider.value.round()
        bgview.backgroundColor=UIColor(red: CGFloat(RedSlider.value/255), green: CGFloat(GreenSlider.value/255), blue: CGFloat(BlueSlider.value/255), alpha: 1)
        
        RedLabel.text=Int(RedSlider.value).description
        GreenLabel.text=Int(GreenSlider.value).description
        BlueLabel.text=Int(BlueSlider.value).description
    }
    
    @IBAction func HairColorChanged(_ sender: UISlider) {Kila2View.alpha=CGFloat(AlphaSlider.value)
        Kila3View.alpha=CGFloat(AlphaSlider.value)
        AlphaLabel.text=String(format:"%.2f",AlphaSlider.value).description
    }
    
    @IBAction func BgRadiusChanged(_ sender: UISlider) {bgview.layer.cornerRadius=CGFloat(sender.value)
        RadiusLabel.text=Int(RadiusSlider.value).description
    }
    
    @IBAction func RandomChanged(_ sender: Any)
    {let redNumber = Float.random(in: 0...255).rounded()
        let greenNumber = Float.random (in: 0...255).rounded()
        let blueNumber = Float.random (in: 0...255).rounded()
        let radiusNumber = Float.random(in: 60...120).rounded()
        
        RedSlider.value=redNumber
        GreenSlider.value=greenNumber
        BlueSlider.value=blueNumber
        RadiusSlider.value=radiusNumber
        
        bgview.backgroundColor=UIColor(red: CGFloat(RedSlider.value/255), green: CGFloat(GreenSlider.value/255), blue: CGFloat(BlueSlider.value/255), alpha: 1)
        bgview.layer.cornerRadius=CGFloat(RadiusSlider.value)
        
        
        RadiusLabel.text=Int(RadiusSlider.value).description
        RedLabel.text=Int(RedSlider.value).description
        GreenLabel.text=Int(GreenSlider.value).description
        BlueLabel.text=Int(BlueSlider.value).description
    }
}

